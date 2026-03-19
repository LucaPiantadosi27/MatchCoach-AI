# Lavagna Tattica v2.0 ⚽

App professionale per allenatori di calcio a 5 con lavagna tattica interattiva, analisi video e gestione schemi.

## 🎯 Caratteristiche Principali

### Lavagna Tattica Professionale
- **Pedine realistiche** con postura, braccia e indicatore direzione
- **Drag fluido a 60fps** - zero lag tra dito e movimento
- **Rotazione pedine** 0-360° con doppio tap
- **Numeri giocatore** personalizzabili
- **Zoom e pan** - pinch-to-zoom (0.5x-4.0x)
- **Responsive design** - supporto completo portrait/landscape
- **Coordinate normalizzate** - compatibilità multi-dispositivo

### Sistema Disegno
- Linee continue e tratteggiate
- Colori personalizzabili
- Undo/Clear
- Layer separati ottimizzati

### Gestione Schemi
- Salvataggio cloud con Supabase
- Serializzazione JSON completa con metadata
- Limite 10 schemi per utenti free
- Sincronizzazione multi-dispositivo

### Analisi Video
- Upload e compressione automatica
- Storage cloud sicuro
- Condivisione tramite URL

## 🚀 Performance

- **60fps garantiti** su dispositivi mid-range
- **Zero lag** durante drag pedine
- **Rendering ottimizzato** con layer separati
- **Update selettivo** - nessun rebuild globale
- **Memoria ottimizzata** - coordinate normalizzate

## 📱 Compatibilità

- ✅ Android
- ✅ iOS  
- ✅ Web (Chrome)
- ✅ Portrait e Landscape
- ✅ Smartphone e Tablet

## 🛠️ Setup Progetto

### Prerequisiti
- Flutter 3.41.2+
- Account Supabase (gratuito)

### Installazione

```bash
# Clone repository
git clone https://github.com/tuouser/lavagna-tattica.git
cd lavagna-tattica

# Installa dipendenze
flutter pub get

# Configura Supabase
# Modifica lib/core/constants.dart con le tue credenziali

# Esegui migration database
supabase link --project-ref <tuo-project-id>
supabase db push

# Avvia app
flutter run -d chrome
```

## 📖 Documentazione

- [DOCUMENTAZIONE_FUNZIONALITA.md](DOCUMENTAZIONE_FUNZIONALITA.md) - Guida completa funzionalità
- [RESTYLING_CHANGELOG.md](RESTYLING_CHANGELOG.md) - Dettagli restyling v2.0

## 🎨 Nuove Funzionalità v2.0

### Pedine Avanzate
```
      ▲ (direzione)
    /   \
   |  5  |  (numero)
    \___/
   (braccia)
```

### Gesture Supportate
- **Tap:** Selezione
- **Doppio tap:** Modalità rotazione
- **Drag:** Movimento
- **Pinch:** Zoom
- **Pan (2 dita):** Navigazione

### JSON Schema v2.0
```json
{
  "players": [{
    "id": "A1",
    "x": 0.2,
    "y": 0.3,
    "rotation": 45.0,
    "number": 1,
    "team": "A"
  }],
  "meta": {
    "version": "2.0",
    "createdAt": "2026-02-24T10:00:00Z"
  }
}
```

## 🏗️ Architettura

- **State Management:** Riverpod 2.6.1
- **Backend:** Supabase (PostgreSQL + Auth + Storage)
- **Rendering:** CustomPainter ottimizzato
- **Coordinate:** Normalizzate (0.0-1.0)

## 📦 Dipendenze Principali

```yaml
dependencies:
  flutter_riverpod: ^2.6.1
  supabase_flutter: ^2.8.3
  go_router: ^14.8.1
  image_picker: ^1.1.2
  video_player: ^2.9.2
  ffmpeg_kit_flutter_min_gpl: ^6.0.3
```

## 🤝 Contribuire

Contributi benvenuti! Per modifiche importanti, apri prima una issue.

## 📄 Licenza

Questo progetto è distribuito sotto licenza MIT.

## 👨‍💻 Autore

Luca - Lavagna Tattica v2.0

---

**Performance:** 60fps | **Lag:** Zero | **UX:** Professionale
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.






## Prosssimi passi:

voglio procedere con il sistema di analisi video, ovvero con la possibilità di caricare un video di un'intera partita ed estrapolare dati  grazie all'analisi di un modello AI.
Sarà una nuova sezione dell'app che garantirà all'utente di avere un match analyst a disposizione al quale è possibile rivolgere qualsiasi tipo di domande sulla partita, per esempio:
Chi è il giocatore che tira di più?, che tipo di difesa fa la squadra avversaria?, da quale lato prendono più goal? chi è il giocatore che effettua più passaggi? che schema da calcio d'angolo utilizzano di più? ecc..

l'analisi della partita dovrà restituire sempre lo scout con tutte le statistiche  della partita utili per il calcio a 5 e nella sessione relativa al dettaglio dell'analisi in questione vorrei inserire una chat testuale o tramite nota audio in cui il coach può rivolgere delle domande specifiche al modello come riportato precedentemente 