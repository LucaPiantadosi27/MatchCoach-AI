-- =====================================================================
-- MatchCoach-AI — Schema partite, calendario, clip
-- Da eseguire nel SQL Editor di Supabase
-- =====================================================================

-- ── 1. Stagioni ──────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS seasons (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id     UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  name        TEXT NOT NULL,                -- es. "Serie A 2024/25"
  created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE seasons ENABLE ROW LEVEL SECURITY;
CREATE POLICY "users_own_seasons" ON seasons
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- ── 2. Voci calendario ───────────────────────────────────────────
CREATE TABLE IF NOT EXISTS calendar_entries (
  id             UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id        UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  season_id      UUID REFERENCES seasons(id) ON DELETE SET NULL,
  match_day      INT,                        -- giornata (es. 1, 2, ...)
  home_team      TEXT NOT NULL,
  away_team      TEXT NOT NULL,
  scheduled_date DATE,
  venue          TEXT,
  match_id       UUID,                       -- collegato dopo creazione partita
  created_at     TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE calendar_entries ENABLE ROW LEVEL SECURITY;
CREATE POLICY "users_own_calendar" ON calendar_entries
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- ── 3. Partite ───────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS matches (
  id           UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id      UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  season_id    UUID REFERENCES seasons(id) ON DELETE SET NULL,
  home_team    TEXT NOT NULL,
  away_team    TEXT NOT NULL,
  team1_color  TEXT,                         -- hex es. "#FF0000"
  team2_color  TEXT,                         -- hex es. "#0000FF"
  match_date   DATE,
  venue        TEXT,
  notes        TEXT,
  created_at   TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE matches ENABLE ROW LEVEL SECURITY;
CREATE POLICY "users_own_matches" ON matches
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- Collegamento retroattivo: calendar_entries.match_id → matches
ALTER TABLE calendar_entries
  ADD CONSTRAINT fk_calendar_match
  FOREIGN KEY (match_id) REFERENCES matches(id) ON DELETE SET NULL;

-- ── 4. Clip video per partita ────────────────────────────────────
CREATE TYPE analysis_status AS ENUM ('pending', 'processing', 'done', 'error');

CREATE TABLE IF NOT EXISTS match_videos (
  id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  match_id         UUID NOT NULL REFERENCES matches(id) ON DELETE CASCADE,
  user_id          UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  sequence_order   INT NOT NULL DEFAULT 0,  -- ordine clip nella partita
  video_name       TEXT NOT NULL,
  gemini_file_uri  TEXT,                    -- URI su Gemini File API
  analysis_json    JSONB,                   -- output ScoutStatistics
  analysis_status  analysis_status NOT NULL DEFAULT 'pending',
  prompt_tokens    INT DEFAULT 0,
  completion_tokens INT DEFAULT 0,
  total_tokens     INT DEFAULT 0,
  model_name       TEXT,
  created_at       TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at       TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE match_videos ENABLE ROW LEVEL SECURITY;
CREATE POLICY "users_own_match_videos" ON match_videos
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- Indici utili
CREATE INDEX idx_match_videos_match_id ON match_videos(match_id);
CREATE INDEX idx_match_videos_order ON match_videos(match_id, sequence_order);
CREATE INDEX idx_matches_user ON matches(user_id, created_at DESC);
CREATE INDEX idx_calendar_season ON calendar_entries(season_id, match_day);

-- ── 5. Aggiunta model_name a video_analyses esistente ────────────
-- (se la colonna non esiste già)
ALTER TABLE video_analyses
  ADD COLUMN IF NOT EXISTS model_name TEXT,
  ADD COLUMN IF NOT EXISTS user_id UUID REFERENCES auth.users(id) ON DELETE SET NULL;
