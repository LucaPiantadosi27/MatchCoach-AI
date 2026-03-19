import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/board_state.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/player_model.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/drawing_path.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/field_background.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/equipment_model.dart';

class BoardNotifier extends StateNotifier<BoardState> {
  BoardNotifier() : super(_initialState());

  static BoardState _initialState() {
    final List<PlayerModel> players = [];

    // Team A (Red)
    for (int i = 1; i <= 5; i++) {
      players.add(PlayerModel(
        id: 'A$i',
        position: Offset(0.2, 0.15 * i + 0.1),
        team: TeamType.A,
        label: i.toString(),
        number: i,
        rotation: 0.0,
      ));
    }

    // Team B (Blue)
    for (int i = 1; i <= 5; i++) {
      players.add(PlayerModel(
        id: 'B$i',
        position: Offset(0.8, 0.15 * i + 0.1),
        team: TeamType.B,
        label: i.toString(),
        number: i,
        rotation: 180.0,
      ));
    }

    // Ball
    players.add(const PlayerModel(
      id: 'ball',
      position: Offset(0.5, 0.5),
      team: TeamType.Ball,
      label: '⚽',
    ));

    return BoardState(players: players);
  }

  void movePlayer(String id, Offset newPosition) {
    state = state.copyWith(
      players: state.players.map((p) {
        if (p.id == id) {
          return p.copyWith(position: newPosition);
        }
        return p;
      }).toList(),
    );
  }

  void rotatePlayer(String id, double rotation) {
    state = state.copyWith(
      players: state.players.map((p) {
        if (p.id == id) {
          return p.copyWith(rotation: rotation % 360);
        }
        return p;
      }).toList(),
    );
  }

  void selectPlayer(String? id) {
    state = state.copyWith(
      players: state.players.map((p) {
        return p.copyWith(isSelected: p.id == id);
      }).toList(),
    );
  }

  void addPath(DrawingPath path) {
    state = state.copyWith(paths: [...state.paths, path]);
  }

  void undo() {
    if (state.paths.isNotEmpty) {
      state = state.copyWith(
        paths: state.paths.sublist(0, state.paths.length - 1),
      );
    }
  }

  void clear() {
    state = state.copyWith(paths: []);
  }

  void reset() {
    state = _initialState();
  }

  void addPlayer(TeamType team) {
    final teamPlayers = state.players.where((p) => p.team == team).toList();
    final nextNumber = teamPlayers.length + 1;
    final newId = '${team.name}$nextNumber';
    
    // Posizione iniziale basata sul team
    final position = team == TeamType.A 
        ? Offset(0.2, 0.15 * nextNumber + 0.1)
        : Offset(0.8, 0.15 * nextNumber + 0.1);
    
    final newPlayer = PlayerModel(
      id: newId,
      position: position,
      team: team,
      label: nextNumber.toString(),
      number: nextNumber,
      rotation: team == TeamType.A ? 0.0 : 180.0,
    );
    
    state = state.copyWith(
      players: [...state.players, newPlayer],
    );
  }

  void removePlayer(String id) {
    state = state.copyWith(
      players: state.players.where((p) => p.id != id).toList(),
    );
  }

  // ─── EQUIPMENT METHODS ───

  void addEquipment(EquipmentType type) {
    final newId = 'eq_${DateTime.now().millisecondsSinceEpoch}';
    final newEquipment = EquipmentModel(
      id: newId,
      type: type,
      position: const Offset(0.5, 0.5), // Centro del campo
      rotation: 0.0,
    );
    state = state.copyWith(
      equipment: [...state.equipment, newEquipment],
    );
  }

  void moveEquipment(String id, Offset newPosition) {
    state = state.copyWith(
      equipment: state.equipment.map((e) {
        if (e.id == id) {
          return e.copyWith(position: newPosition);
        }
        return e;
      }).toList(),
    );
  }

  void rotateEquipment(String id, double rotation) {
    state = state.copyWith(
      equipment: state.equipment.map((e) {
        if (e.id == id) {
          return e.copyWith(rotation: rotation % 360);
        }
        return e;
      }).toList(),
    );
  }

  void removeEquipment(String id) {
    state = state.copyWith(
      equipment: state.equipment.where((e) => e.id != id).toList(),
    );
  }

  void clearEquipment() {
    state = state.copyWith(equipment: []);
  }

  void clearRecording() {
    state = BoardState(
      name: state.name,
      players: state.players,
      paths: state.paths,
      equipment: state.equipment,
      createdAt: state.createdAt,
      modifiedAt: state.modifiedAt,
      version: state.version,
      recording: null, // Forza reset esplico
    );
  }

  void updateState(BoardState newState) {
    state = newState;
  }
}

final boardProvider = StateNotifierProvider<BoardNotifier, BoardState>((ref) {
  return BoardNotifier();
});

/// Modalità di interazione con il campo
enum InteractionMode {
  move,          // Spostamento giocatori
  draw,          // Disegno linea (stile selezionato da selectedLineStyleProvider)
  addPlayer,     // Aggiunta giocatori
  removePlayer,  // Rimozione giocatori
  removeEquipment, // Rimozione attrezzature
}

final interactionModeProvider = StateProvider<InteractionMode>((ref) => InteractionMode.move);
final selectedColorProvider = StateProvider<Color>((ref) => Colors.white);
final selectedTeamProvider = StateProvider<TeamType>((ref) => TeamType.A);
final fieldBackgroundProvider = StateProvider<FieldBackground>((ref) => FieldBackground.parquetLight);

// Provider per lo stile di linea selezionato
final selectedLineStyleProvider = StateProvider<LineStyle>((ref) => LineStyle.solid);

// Provider per lo spessore della linea
final selectedStrokeWidthProvider = StateProvider<double>((ref) => 3.0);

// Provider per freccia direzionale
final hasArrowProvider = StateProvider<bool>((ref) => false);

// Provider per tracciare se stiamo creando un nuovo schema o caricando uno esistente
final isNewSchemeProvider = StateProvider<bool>((ref) => true);

/// Modalità di visualizzazione del campo
enum FieldViewMode {
  fullField,      // Campo intero
  halfFieldLeft,  // Metà campo sinistra
  halfFieldRight, // Metà campo destra
}

final fieldViewModeProvider = StateProvider<FieldViewMode>((ref) => FieldViewMode.fullField);

// Provider per la griglia di allineamento
final showGridProvider = StateProvider<bool>((ref) => false);
