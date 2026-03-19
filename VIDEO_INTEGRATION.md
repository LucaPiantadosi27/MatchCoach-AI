# MatchCoach: Sistema di Analisi Video AI

Questo documento descrive l'architettura per implementare la nuova sezione di analisi video con IA, la generazione automatica dello scout e l'interfaccia di chat.

> [!IMPORTANT]
> **Scelta del Modello AI / Backend:** Per analizzare interi video di partite, la soluzione ottimale ed economica al momento è utilizzare l'API di **Google Gemini 1.5 Pro**, che supporta nativamente l'upload di video tramite la *File API* e prompt modali su lunghissimi segmenti di video.  
> Un'alternativa è un backend Python cloud-based custom, ma richiederebbe un'infrastruttura complessa che forse è eccessiva.
> L'app invierà il video a Supabase Storage (o direttamente al Google AI File Storage), e poi chiederà a Gemini di produrre un JSON formattato con tutte le statistiche di calcio a 5 (lo *scout*). Successivamente l'app userà la cronologia della chat di Gemini per rispondere a ulteriori domande passando l'ID del file video come contesto. 

## Proposed Changes

---

### Inserimento Nuovi Modelli Supabase e Dati Locali
Dovremo aggiornare Supabase e i modelli dell'app per ospitare i risultati.
#### [NEW] `lib/features/video_analysis/data/models/match_analysis_model.dart`
Conterrà l'entità principale dell'analisi, ID video, stato dell'elaborazione, e la lista di statistiche generata.
#### [NEW] `lib/features/video_analysis/data/models/scout_statistics.dart`
Oggetto per le statistiche calcio a 5: `possesso palla`, `tiri totali/in porta`, `passaggi corti/lunghi`, `zone di attacco/difesa`, ecc.

---

### Integrazione AI e Gemini
Aggiungeremo un provider e un repository dedicato per interfacciarci con Gemini (o l'API scelta).
#### [NEW] `lib/features/video_analysis/data/repositories/ai_analysis_repository.dart`
Logica per l'upload e il prompt d'azione verso il modello LLM.
#### [NEW] `lib/features/video_analysis/data/providers/ai_chat_provider.dart`
Per la gestione dello stato della conversazione testuale e audio (Riverpod).
Includerà plugin come `google_generative_ai` e `record` per l'audio input.

---

### Interfaccia Utente (UI)
#### [NEW] `lib/features/video_analysis/presentation/screens/upload_match_screen.dart`
Interfaccia per caricare la partita, con feedback in tempo reale sull'elaborazione.
#### [NEW] `lib/features/video_analysis/presentation/screens/analysis_detail_screen.dart`
Lo schermo principale col video player per rivedere i momenti salienti (se presenti) e due tab: 
1. **Scout:** Widget tabellari e grafici per le statistiche.
2. **Chat AI:** Interfaccia messaggistica.
#### [NEW] `lib/features/video_analysis/presentation/widgets/ai_chat_interface.dart`
Componente per messaggi testuali con l'integrazione di un pulsante per le note vocali.
#### [NEW] `lib/features/video_analysis/presentation/widgets/scout_dashboard.dart`
Dashboard delle statistiche di calcio a 5 estrapolate.

## Verification Plan

### Manual Verification
1. Eseguire l'app (compilata localmente o emulatore).
2. Caricare un breve video "mock" di calcio a 5.
3. Verificare l'estrapolazione delle statistiche base.
4. Digitare nella chat una domanda ("Da che lato hanno attaccato di più?") e verificare la risposta coerente.
5. Inviare un messaggio audio (nota vocale) e verificare la trascrizione/risposta.
