# Setup Sistema Registrazioni

## 📋 Panoramica

Il sistema di registrazioni permette di:
- Usare liberamente la lavagna tattica in `/board`
- Registrare movimenti delle pedine
- Salvare registrazioni come entità separate con ID univoco
- Visualizzare lista registrazioni in `/schemes`
- Riprodurre registrazioni con player dedicato

## 🗄️ Setup Database Supabase

### 1. Crea Tabella `recordings`

Accedi al tuo progetto Supabase e esegui questo SQL:

```sql
-- Crea tabella recordings
CREATE TABLE recordings (
  id TEXT PRIMARY KEY,
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  data JSONB NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Indici per performance
CREATE INDEX idx_recordings_user_id ON recordings(user_id);
CREATE INDEX idx_recordings_created_at ON recordings(created_at DESC);

-- Row Level Security (RLS)
ALTER TABLE recordings ENABLE ROW LEVEL SECURITY;

-- Policy: Gli utenti possono vedere solo le proprie registrazioni
CREATE POLICY "Users can view own recordings"
  ON recordings FOR SELECT
  USING (auth.uid() = user_id);

-- Policy: Gli utenti possono inserire le proprie registrazioni
CREATE POLICY "Users can insert own recordings"
  ON recordings FOR INSERT
  WITH CHECK (auth.uid() = user_id);

-- Policy: Gli utenti possono aggiornare le proprie registrazioni
CREATE POLICY "Users can update own recordings"
  ON recordings FOR UPDATE
  USING (auth.uid() = user_id);

-- Policy: Gli utenti possono eliminare le proprie registrazioni
CREATE POLICY "Users can delete own recordings"
  ON recordings FOR DELETE
  USING (auth.uid() = user_id);
```

### 2. Verifica Tabella

Dopo aver eseguito lo script, verifica che la tabella sia stata creata:

```sql
SELECT * FROM recordings LIMIT 1;
```

## 🚀 Workflow Utente

### Creare una Nuova Registrazione

1. **Vai su `/board`**
   - La lavagna è libera per uso immediato
   - Puoi muovere pedine, disegnare, cambiare sfondo

2. **Quando vuoi salvare una registrazione:**
   - Premi il pulsante **REGISTRA** (rosso) nella sidebar
   - Muovi le pedine come desideri
   - I movimenti vengono registrati automaticamente

3. **Ferma la registrazione:**
   - Premi **STOP** (rosso)
   - Si apre un dialog per inserire il nome
   - Inserisci il nome e premi **Salva**

4. **Salvataggio automatico:**
   - La registrazione viene salvata in Supabase
   - Redirect automatico a `/schemes`
   - Vedi la tua registrazione nella lista

### Visualizzare una Registrazione

1. **Vai su `/schemes`**
   - Vedi lista di tutte le tue registrazioni
   - Ogni registrazione mostra:
     - 🎥 Icona videocamera viola
     - Nome registrazione
     - Durata (es. "15.3s")
     - Data creazione

2. **Clicca su una registrazione**
   - Si apre la pagina `/recording/{id}`
   - Vedi il campo con le pedine nella posizione iniziale
   - Player viola con controlli

3. **Usa il player:**
   - ▶️ **Play** - Avvia riproduzione
   - ⏸️ **Pause** - Mette in pausa
   - ⏪ **-5s** - Torna indietro 5 secondi
   - ⏩ **+5s** - Avanza 5 secondi
   - 📊 **Slider** - Vai a un punto specifico
   - ⏹️ **Stop** - Ferma e torna all'inizio

### Eliminare una Registrazione

1. Vai su `/schemes`
2. Premi l'icona 🗑️ rossa sulla registrazione
3. Conferma l'eliminazione

## 🎯 Architettura Tecnica

### Modelli

- **`SavedRecording`** - Modello per registrazioni salvate
  - `id`: ID univoco (timestamp)
  - `userId`: ID utente proprietario
  - `name`: Nome registrazione
  - `recording`: Dati MovementRecording
  - `createdAt`: Timestamp creazione

- **`MovementRecording`** - Dati registrazione
  - `keyframes`: Lista di MovementKeyframe
  - `duration`: Durata totale in secondi

- **`MovementKeyframe`** - Singolo frame
  - `timestamp`: Tempo in secondi
  - `playerStates`: Mappa posizioni/rotazioni pedine

### Repository

**`RecordingRepository`** gestisce CRUD registrazioni:
- `saveRecording()` - Salva nuova registrazione
- `getUserRecordings()` - Lista registrazioni utente
- `getRecording()` - Carica singola registrazione
- `deleteRecording()` - Elimina registrazione

### Provider

- **`isNewSchemeProvider`** - Traccia se è un nuovo schema
  - `true` → Mostra pulsante REGISTRA e player
  - `false` → Nasconde controlli registrazione

- **`recordingProvider`** - Gestisce stato registrazione
  - `idle`, `recording`, `playing`, `paused`

- **`userRecordingsProvider`** - Lista registrazioni da Supabase

### Pagine

- **`/board`** - Lavagna tattica con registrazione opzionale
- **`/schemes`** - Lista registrazioni salvate
- **`/recording/:id`** - Visualizzazione singola registrazione

## ✅ Checklist Setup

- [ ] Tabella `recordings` creata in Supabase
- [ ] RLS policies configurate
- [ ] App riavviata con `flutter run -d chrome`
- [ ] Test creazione registrazione in `/board`
- [ ] Test visualizzazione in `/schemes`
- [ ] Test riproduzione con player

## 🐛 Troubleshooting

### Errore: "Table recordings does not exist"
- Verifica di aver eseguito lo script SQL in Supabase
- Controlla che il nome tabella sia esattamente `recordings`

### Registrazioni non visibili in `/schemes`
- Verifica RLS policies in Supabase
- Controlla che `user_id` corrisponda all'utente loggato
- Verifica console browser per errori

### Player non funziona
- Controlla che la registrazione abbia keyframes
- Verifica che `duration > 0`
- Controlla console per errori di deserializzazione

## 📝 Note

- Le registrazioni sono **private** per ogni utente (RLS)
- ID registrazione = timestamp in millisecondi
- Formato dati: JSONB per flessibilità
- Player aggiorna a 60fps (16ms) per animazioni fluide
