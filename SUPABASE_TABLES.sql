-- ============================================
-- SCRIPT SQL PER TABELLE SUPABASE
-- Lavagna Tattica - Coach Board Futsal
-- ============================================

-- ============================================
-- TABELLA: teams (Sprint 4)
-- Gestione squadre e giocatori
-- ============================================

CREATE TABLE teams (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  name TEXT NOT NULL,
  color TEXT NOT NULL DEFAULT '#2196F3',
  logo_url TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Tabella per i giocatori di una squadra
CREATE TABLE team_players (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  team_id UUID REFERENCES teams(id) ON DELETE CASCADE NOT NULL,
  name TEXT NOT NULL,
  number INTEGER NOT NULL,
  role TEXT, -- 'portiere', 'difensore', 'ala', 'pivot', 'universale'
  photo_url TEXT,
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Indici per performance
CREATE INDEX idx_teams_user_id ON teams(user_id);
CREATE INDEX idx_team_players_team_id ON team_players(team_id);

-- Row Level Security (RLS) per teams
ALTER TABLE teams ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own teams"
  ON teams FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own teams"
  ON teams FOR INSERT
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update own teams"
  ON teams FOR UPDATE
  USING (auth.uid() = user_id);

CREATE POLICY "Users can delete own teams"
  ON teams FOR DELETE
  USING (auth.uid() = user_id);

-- RLS per team_players (accesso tramite team ownership)
ALTER TABLE team_players ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own team players"
  ON team_players FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM teams 
      WHERE teams.id = team_players.team_id 
      AND teams.user_id = auth.uid()
    )
  );

CREATE POLICY "Users can insert own team players"
  ON team_players FOR INSERT
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM teams 
      WHERE teams.id = team_players.team_id 
      AND teams.user_id = auth.uid()
    )
  );

CREATE POLICY "Users can update own team players"
  ON team_players FOR UPDATE
  USING (
    EXISTS (
      SELECT 1 FROM teams 
      WHERE teams.id = team_players.team_id 
      AND teams.user_id = auth.uid()
    )
  );

CREATE POLICY "Users can delete own team players"
  ON team_players FOR DELETE
  USING (
    EXISTS (
      SELECT 1 FROM teams 
      WHERE teams.id = team_players.team_id 
      AND teams.user_id = auth.uid()
    )
  );


-- ============================================
-- TABELLA: folders (Sprint 5)
-- Organizzazione tattiche in cartelle
-- ============================================

CREATE TABLE folders (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  name TEXT NOT NULL,
  parent_id UUID REFERENCES folders(id) ON DELETE CASCADE,
  color TEXT DEFAULT '#9E9E9E',
  icon TEXT DEFAULT 'folder',
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Indici per performance
CREATE INDEX idx_folders_user_id ON folders(user_id);
CREATE INDEX idx_folders_parent_id ON folders(parent_id);

-- Row Level Security (RLS)
ALTER TABLE folders ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own folders"
  ON folders FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own folders"
  ON folders FOR INSERT
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update own folders"
  ON folders FOR UPDATE
  USING (auth.uid() = user_id);

CREATE POLICY "Users can delete own folders"
  ON folders FOR DELETE
  USING (auth.uid() = user_id);


-- ============================================
-- MODIFICA TABELLA: recordings (Sprint 5)
-- Aggiungere folder_id per organizzazione
-- ============================================

-- Esegui SOLO se la tabella recordings esiste già
ALTER TABLE recordings 
ADD COLUMN IF NOT EXISTS folder_id UUID REFERENCES folders(id) ON DELETE SET NULL;

CREATE INDEX IF NOT EXISTS idx_recordings_folder_id ON recordings(folder_id);


-- ============================================
-- VERIFICA CREAZIONE TABELLE
-- ============================================

-- Esegui queste query per verificare che le tabelle siano state create:
-- SELECT * FROM teams LIMIT 1;
-- SELECT * FROM team_players LIMIT 1;
-- SELECT * FROM folders LIMIT 1;


-- ============================================
-- TABELLA: match_analysis (Video Analysis con IA)
-- Gestione analisi partite con Gemini
-- ============================================

CREATE TABLE match_analysis (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  title TEXT NOT NULL,
  video_url TEXT NOT NULL,
  storage_path TEXT,
  gemini_file_id TEXT,
  status TEXT NOT NULL DEFAULT 'pending', -- pending, uploading, processing, completed, error
  statistics JSONB, -- Contiene ScoutStatistics
  error_message TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Indici per performance
CREATE INDEX idx_match_analysis_user_id ON match_analysis(user_id);
CREATE INDEX idx_match_analysis_status ON match_analysis(status);

-- RLS per match_analysis
ALTER TABLE match_analysis ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own match analysis"
  ON match_analysis FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own match analysis"
  ON match_analysis FOR INSERT
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update own match analysis"
  ON match_analysis FOR UPDATE
  USING (auth.uid() = user_id);

CREATE POLICY "Users can delete own match analysis"
  ON match_analysis FOR DELETE
  USING (auth.uid() = user_id);
