-- 1. Crea il bucket per i video
INSERT INTO storage.buckets (id, name, public) 
VALUES ('videos', 'videos', true)
ON CONFLICT (id) DO NOTHING;

-- 2. Policy: Gli utenti possono caricare video nella propria sottocartella 'raw/'
CREATE POLICY "Users can upload their own videos"
ON storage.objects FOR INSERT 
WITH CHECK (
  bucket_id = 'videos' 
  AND (storage.foldername(name))[1] = 'raw'
);

-- 3. Policy: Accesso in lettura pubblico (visto che il bucket è public, questo è ridondante ma buona pratica)
CREATE POLICY "Public Access for videos"
ON storage.objects FOR SELECT
USING (bucket_id = 'videos');
