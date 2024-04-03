import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:game_learn/constants.dart';
import 'package:game_learn/game/go_green_game.dart';

class Player extends SpriteComponent with HasGameRef<GoGreenGame>{

  @override
  Future<FutureOr<void>> onLoad() async {
    sprite = await Sprite.load("water_bottle.png");
    size = Vector2.all(100);
    position = Vector2(0, -(gameHeight / 2) + (size.y / 2));
    anchor = Anchor.topCenter;
    add(RectangleHitbox());
  }

  @override
  void update(double dt) {
    super.update(dt);

    double newY = position.y + (dt * 400);
    if(newY > (gameRef.size.y / 2.25) - (size.y / 2.25)){
      newY = (gameRef.size.y / 2.25) - (size.y / 2.25);
    }
    position.y = newY;
  }

  void move(double deltaX){
     double newX = position.x + deltaX;

     double minX = -(gameRef.size.x / 2) + size.x / 2;
     double maxX = (gameRef.size.x / 2) - size.x / 2;

     newX = newX.clamp(minX, maxX);

     position.x = newX;
  }
}