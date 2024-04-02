import 'dart:async';

import 'package:flame/components.dart';
import 'package:game_learn/constants.dart';
import 'package:game_learn/game/go_green_game.dart';

class Player extends SpriteComponent with HasGameRef<GoGreenGame>{

  @override
  Future<FutureOr<void>> onLoad() async {
    sprite = await Sprite.load("water_bottle.png");
    size = Vector2.all(200);
    position = Vector2(0, -(gameHeight / 2) + (size.y / 2));
    anchor = Anchor.topCenter;
  }

  @override
  void update(double dt) {
    super.update(dt);

    double newY = position.y + (dt * 400);
    if(newY > (gameRef.size.y / 2) - (size.y / 1.2)){
      newY = (gameRef.size.y / 2) - (size.y / 1.2);
    }
    position.y = newY;
  }
}