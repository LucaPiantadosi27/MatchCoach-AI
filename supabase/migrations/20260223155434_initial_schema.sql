-- 1. Tabella Profili Utenti (estensione di auth.users)
CREATE TABLE public.users (
  id uuid REFERENCES auth.users ON DELETE CASCADE NOT NULL PRIMARY KEY,
  email text NOT NULL,
  role text DEFAULT 'free' CHECK (role IN ('free', 'premium', 'admin')),
  schemes_count int DEFAULT 0,
  created_at timestamp WITH time zone DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- 2. Tabella Schemi Tattici
CREATE TABLE public.tactical_schemes (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id uuid REFERENCES public.users(id) ON DELETE CASCADE NOT NULL,
  name text NOT NULL,
  data jsonb NOT NULL,
  created_at timestamp WITH time zone DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- 3. Trigger per creare automaticamente il profilo quando un utente si registra
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger AS $$
BEGIN
  INSERT INTO public.users (id, email, role)
  VALUES (new.id, new.email, 'free');
  RETURN new;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE PROCEDURE public.handle_new_user();

-- 4. Abilita Row Level Security (RLS)
ALTER TABLE public.users ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.tactical_schemes ENABLE ROW LEVEL SECURITY;

-- 5. Policy: Gli utenti possono vedere solo il proprio profilo e i propri schemi
CREATE POLICY "Users can view own profile" ON public.users FOR SELECT USING (auth.uid() = id);
CREATE POLICY "Users can view own schemes" ON public.tactical_schemes FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can insert own schemes" ON public.tactical_schemes FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can delete own schemes" ON public.tactical_schemes FOR DELETE USING (auth.uid() = user_id);
