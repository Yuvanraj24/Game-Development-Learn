import 'dart:async';

import 'package:flame/components.dart';
import 'package:game_learn/game/go_green_game.dart';
import 'package:game_learn/player.dart';

class   GoGreenWorld extends World with HasGameRef<GoGreenGame> {
  late final Player player;
    @override
  FutureOr<void> onLoad() {
      // world means that whole game -  like say game world
      player = Player();
      add(player);

  }
}