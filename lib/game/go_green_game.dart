import 'dart:async';

import 'package:flame/camera.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:game_learn/constants.dart';
import 'package:game_learn/game/go_green_world.dart';

class GoGreenGame extends FlameGame {
  GoGreenGame() : super(
      world: GoGreenWorld(),
      camera: CameraComponent.withFixedResolution(
      width: gameWidth,
      height: gameHeight
  ));



  @override
  Color backgroundColor(){
    return Colors.yellow;
  }
}