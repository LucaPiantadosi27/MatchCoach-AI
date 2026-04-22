-- Tabella per salvare le analisi video (solo JSON, non i video)
CREATE TABLE IF NOT EXISTS video_analyses (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  video_name TEXT NOT NULL,
  analysis_data JSONB NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Indice per query veloci per utente
CREATE INDEX IF NOT EXISTS idx_video_analyses_user_id ON video_analyses(user_id);

-- Indice per ordinamento per data
CREATE INDEX IF NOT EXISTS idx_video_analyses_created_at ON video_analyses(created_at DESC);

-- RLS (Row Level Security) - gli utenti vedono solo le proprie analisi
ALTER TABLE video_analyses ENABLE ROW LEVEL SECURITY;

-- Policy: gli utenti possono vedere solo le proprie analisi
CREATE POLICY "Users can view their own analyses"
  ON video_analyses
  FOR SELECT
  USING (auth.uid() = user_id);

-- Policy: gli utenti possono inserire le proprie analisi
CREATE POLICY "Users can insert their own analyses"
  ON video_analyses
  FOR INSERT
  WITH CHECK (auth.uid() = user_id);

-- Policy: gli utenti possono aggiornare le proprie analisi
CREATE POLICY "Users can update their own analyses"
  ON video_analyses
  FOR UPDATE
  USING (auth.uid() = user_id);

-- Policy: gli utenti possono eliminare le proprie analisi
CREATE POLICY "Users can delete their own analyses"
  ON video_analyses
  FOR DELETE
  USING (auth.uid() = user_id);

-- Trigger per aggiornare updated_at automaticamente
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_video_analyses_updated_at
  BEFORE UPDATE ON video_analyses
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

-- Commento sulla tabella
COMMENT ON TABLE video_analyses IS 'Memorizza le analisi AI dei video delle partite (solo dati JSON, non i video stessi)';
COMMENT ON COLUMN video_analyses.analysis_data IS 'Dati JSON completi dell''analisi AI (statistiche, scout, movimenti, ecc.)';
