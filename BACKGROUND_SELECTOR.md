# Sistema Selezione Background Campo 🎨

## ✅ Implementazione Completata

Ho implementato un sistema completo per selezionare il background del campo tattico con 4 opzioni predefinite.

---

## 🎨 Background Disponibili

### 1. Verde 🟢
- **Tipo:** Colore solido
- **Colore:** #2E7D32 (verde campo calcio)
- **Uso:** Campo calcio tradizionale

### 2. Blu 🔵
- **Tipo:** Colore solido
- **Colore:** #1565C0 (blu palazzetto)
- **Uso:** Campo indoor alternativo

### 3. Parquet Chiaro 🟤
- **Tipo:** Texture immagine + fallback generato
- **Immagine:** `assets/images/parquet_chiaro.jpg`
- **Fallback:** Texture generata con colore #D4A574
- **Uso:** Pavimento palazzetto chiaro

### 4. Parquet Scuro 🟫
- **Tipo:** Texture immagine + fallback generato
- **Immagine:** `assets/images/parquet_scuro.jpg`
- **Fallback:** Texture generata con colore #8B6F47
- **Uso:** Pavimento palazzetto scuro

---

## 🎯 Funzionalità

### Selezione Visiva
- **Widget dedicato** nella sidebar landscape
- **Preview colore** per ogni opzione
- **Icona rappresentativa** (erba, acqua, griglia)
- **Indicatore selezione** con check verde
- **Cambio istantaneo** al tap

### Ripetizione Texture
- **Tiling automatico** delle immagini parquet
- **Copertura completa** del campo
- **Seamless** se l'immagine è ripetibile
- **Performance ottimizzate** con caching

### Fallback Intelligente
- Se l'immagine non è presente → **texture generata**
- Texture generata con listelli di legno realistici
- Variazioni di colore per ogni listello
- Venature del legno simulate

---

## 📁 Struttura File

### Nuovi File Creati

**Models:**
```
lib/features/tactical_board/data/models/field_background.dart
```
- Enum `FieldBackgroundType`
- Classe `FieldBackground` con configurazioni
- Metodi helper (displayName, icon, previewColor)

**Widgets:**
```
lib/features/tactical_board/presentation/widgets/background_selector.dart
```
- Widget selettore visuale
- Lista opzioni con preview
- Gestione selezione

**Assets:**
```
assets/images/README.md
assets/images/parquet_chiaro.jpg (da caricare)
assets/images/parquet_scuro.jpg (da caricare)
```

### File Modificati

**Providers:**
- `board_provider.dart` - Aggiunto `fieldBackgroundProvider`

**Painters:**
- `field_painter.dart` - Supporto background multipli e immagini

**UI:**
- `tactical_board_page.dart` - Integrazione selector e caricamento immagini

**Config:**
- `pubspec.yaml` - Aggiunta cartella assets

---

## 🎮 Come Usare

### Per l'Utente

1. **Apri la lavagna tattica**
2. **In landscape:** Vedi il selettore nella sidebar sinistra
3. **Tap su un'opzione** per cambiare background
4. Il campo si aggiorna istantaneamente

### Posizione Selettore

**Layout Landscape:**
```
┌─────────────────────────────┐
│ Sfondo Campo                │
│ ┌─────────────────────┐     │
│ │ 🟢 Verde         ✓  │     │
│ └─────────────────────┘     │
│ ┌─────────────────────┐     │
│ │ 🔵 Blu              │     │
│ └─────────────────────┘     │
│ ┌─────────────────────┐     │
│ │ 🟤 Parquet Chiaro   │     │
│ └─────────────────────┘     │
│ ┌─────────────────────┐     │
│ │ 🟫 Parquet Scuro    │     │
│ └─────────────────────┘     │
└─────────────────────────────┘
```

**Layout Portrait:**
- Selettore disponibile tramite menu (da implementare se richiesto)

---

## 🖼️ Caricamento Immagini

### Dove Mettere le Immagini

Carica i file nella cartella:
```
assets/images/
├── parquet_chiaro.jpg
└── parquet_scuro.jpg
```

### Requisiti Immagini

**Formato:**
- JPG o PNG
- Dimensioni: 512x512px o superiore
- **Seamless** (ripetibile senza giunture)

**Dove Trovarle:**
- [Textures.com](https://www.textures.com)
- [Freepik](https://www.freepik.com)
- [Unsplash](https://unsplash.com)

Cerca: "wood floor texture", "parquet seamless", "basketball court floor"

### Cosa Succede Senza Immagini

Se le immagini non sono presenti:
- ✅ **L'app funziona comunque**
- ✅ Usa texture parquet **generata via codice**
- ✅ Listelli di legno con variazioni di colore
- ✅ Venature simulate

---

## 🔧 Implementazione Tecnica

### Provider
```dart
final fieldBackgroundProvider = StateProvider<FieldBackground>(
  (ref) => FieldBackground.parquetLight
);
```

### Caricamento Immagini
```dart
Future<void> _loadBackgroundImage(FieldBackground background) async {
  final data = await DefaultAssetBundle.of(context).load(background.imagePath!);
  final codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
  final frame = await codec.getNextFrame();
  setState(() => _backgroundImage = frame.image);
}
```

### Tiling Immagini
```dart
void _drawTiledImage(Canvas canvas, Size size, ui.Image image) {
  for (double y = 0; y < size.height; y += imageHeight) {
    for (double x = 0; x < size.width; x += imageWidth) {
      canvas.drawImage(image, Offset(x, y), paint);
    }
  }
}
```

### Fallback Generato
```dart
void _drawGeneratedParquet(Canvas canvas, Size size, bool isLight) {
  final baseColor = isLight 
    ? const Color(0xFFD4A574) 
    : const Color(0xFF8B6F47);
  
  // Disegna listelli con variazioni
  for (double y = 0; y < size.height; y += plankHeight) {
    for (double x = 0; x < size.width; x += plankWidth) {
      // Listello + venature
    }
  }
}
```

---

## 📊 Performance

### Ottimizzazioni

✅ **Caching immagini** - Carica una sola volta
✅ **Evita ricaricamenti** - Controlla tipo già caricato
✅ **Fallback immediato** - Nessun delay se immagine manca
✅ **shouldRepaint ottimizzato** - Ridisegna solo se cambia background

### Memoria

- Immagini caricate: ~1-2MB ciascuna
- Texture generata: Nessun overhead memoria
- Caching automatico di Flutter

---

## 🎨 Personalizzazione Futura

### Facile Aggiungere Nuovi Background

1. **Aggiungi enum:**
```dart
enum FieldBackgroundType {
  green, blue, parquetLight, parquetDark,
  custom, // NUOVO
}
```

2. **Aggiungi configurazione:**
```dart
static FieldBackground get custom => const FieldBackground(
  type: FieldBackgroundType.custom,
  imagePath: 'assets/images/custom.jpg',
);
```

3. **Aggiungi al selector:**
```dart
_buildBackgroundOption(context, ref, FieldBackground.custom, currentBackground)
```

---

## ✅ Checklist Completamento

- ✅ Enum `FieldBackgroundType` con 4 opzioni
- ✅ Classe `FieldBackground` con configurazioni
- ✅ Provider `fieldBackgroundProvider`
- ✅ Widget `BackgroundSelector` visuale
- ✅ `FieldPainter` supporta background multipli
- ✅ Caricamento immagini con `ui.Image`
- ✅ Tiling automatico immagini
- ✅ Fallback texture generata
- ✅ Cartella `assets/images/` creata
- ✅ `pubspec.yaml` configurato
- ✅ README istruzioni immagini
- ✅ Integrazione UI landscape
- ✅ Performance ottimizzate

---

## 🚀 Prossimi Passi

### Per Te (Utente)

1. **Carica le immagini parquet:**
   - Trova 2 texture parquet (chiara e scura)
   - Rinomina: `parquet_chiaro.jpg` e `parquet_scuro.jpg`
   - Copia in `assets/images/`

2. **Riavvia l'app:**
```bash
flutter pub get
flutter run -d chrome
```

3. **Testa il selettore:**
   - Apri lavagna tattica
   - Ruota in landscape
   - Prova tutti i 4 background

### Opzionale

- Aggiungere selettore anche in portrait
- Salvare preferenza background
- Aggiungere più opzioni colore
- Upload immagini custom dall'app

---

## 📝 Note Importanti

⚠️ **Immagini non incluse** - Devi caricarle tu
✅ **Funziona senza immagini** - Usa fallback generato
🎨 **Seamless importante** - Per texture ripetibile senza giunture
📱 **Solo landscape** - Selettore visibile solo in landscape (per ora)

---

*Implementazione completata: 24 Febbraio 2026*
*Versione: 3.1 - Background Selector Edition*
