import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:game_learn/game/go_green_game.dart';
import 'package:game_learn/game/sprites/player.dart';

class Bin extends SpriteComponent with HasGameRef<GoGreenGame> , CollisionCallbacks{

  @override
  Future<FutureOr<void>> onLoad() async {
    sprite = await Sprite.load("bin_recycle.png");
    size = Vector2.all(200);
    position = Vector2(0, (gameRef.size.y / 2) - (size.y / 2));
    anchor = Anchor.center;
    add(RectangleHitbox());
  }

  @override
  void onCollisionStart(
      Set<Vector2> intersectionPoints, PositionComponent other) {
    if(other is Player && other.position.y>position.y){
      other.removeFromParent();
    }
    super.onCollisionStart(intersectionPoints, other);
  }
}