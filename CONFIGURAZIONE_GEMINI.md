# 🔑 Configurazione Gemini AI API

## Errore 404: API Key non configurata o non valida

Se ricevi l'errore `404 (Not Found)` quando provi ad analizzare un video, significa che l'API key di Gemini non è configurata correttamente.

## 📋 Passi per configurare l'API Key

### 1. Ottieni una API Key gratuita

1. Vai su **[Google AI Studio](https://aistudio.google.com/app/apikey)**
2. Accedi con il tuo account Google
3. Clicca su **"Get API Key"** o **"Create API Key"**
4. Seleziona un progetto Google Cloud (o creane uno nuovo)
5. Copia la chiave API generata

### 2. Configura il file .env

1. Nella root del progetto (`c:\Users\Luca\Desktop\MatchCoach\`), trova il file `.env.example`
2. Copia il file e rinominalo in `.env`:
   ```bash
   copy .env.example .env
   ```
3. Apri il file `.env` con un editor di testo
4. Incolla la tua API key:
   ```env
   GEMINI_API_KEY=AIzaSy...tua_chiave_qui
   ```
5. Salva il file

### 3. Verifica la configurazione

Il file `.env` dovrebbe contenere:
```env
GEMINI_API_KEY=AIzaSyXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
SUPABASE_URL=https://lnltsnqjwzyzaomwcmad.supabase.co
SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
```

### 4. Riavvia l'applicazione

```bash
flutter run -d chrome
```

## 🔍 Verifica che l'API Key funzioni

1. Vai su **Analisi Video** nell'app
2. Carica un video di test
3. Clicca su **"Analizza e Salva"**
4. Se tutto è configurato correttamente, vedrai:
   - "Analisi in corso..."
   - Upload del video a Gemini (può richiedere alcuni minuti)
   - "✅ Analisi completata e salvata con successo!"

## ❌ Problemi comuni

### Errore 404: Not Found
**Causa**: API key non configurata o non valida
**Soluzione**: 
- Verifica che il file `.env` esista nella root del progetto
- Controlla che `GEMINI_API_KEY` sia presente e non vuota
- Assicurati di aver copiato l'intera chiave (inizia con `AIza`)

### Errore 403: Forbidden
**Causa**: API key non ha i permessi necessari
**Soluzione**:
- Vai su [Google Cloud Console](https://console.cloud.google.com/)
- Abilita "Generative Language API" per il tuo progetto
- Assicurati che l'API key abbia accesso a questa API

### Errore 429: Too Many Requests
**Causa**: Hai superato la quota gratuita
**Soluzione**:
- Attendi che la quota si resetti (di solito ogni minuto)
- Considera di passare a un piano a pagamento se necessario

## 📊 Limiti della quota gratuita

- **60 richieste al minuto**
- **1,500 richieste al giorno**
- **1 milione di token al giorno**

Per l'analisi video, ogni richiesta può consumare molti token, quindi potresti raggiungere il limite giornaliero con pochi video.

## 💡 Suggerimenti

1. **Testa con video brevi** (30-60 secondi) per consumare meno quota
2. **Riduci la risoluzione** del video prima di caricarlo
3. **Usa video compressi** in formato MP4 con codec H.264
4. **Monitora l'uso** su [Google AI Studio](https://aistudio.google.com/)

## 🔗 Link utili

- [Google AI Studio](https://aistudio.google.com/app/apikey) - Gestione API Keys
- [Documentazione Gemini API](https://ai.google.dev/docs) - Guida completa
- [Pricing e Quote](https://ai.google.dev/pricing) - Dettagli sui limiti

## 🆘 Supporto

Se continui ad avere problemi:
1. Verifica che il file `.env` sia nella root del progetto
2. Controlla che non ci siano spazi extra nella chiave API
3. Riavvia completamente l'applicazione (non solo hot reload)
4. Controlla i log della console per errori dettagliati
