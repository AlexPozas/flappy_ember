import 'package:flame/components.dart';

class Sky extends SpriteComponent with HasGameRef {
  Sky() : super(priority: -1);

  @override
  Future<void> onLoad() async {
    sprite = await gameRef.loadSprite('sky.png');
  }

  @override
  void onGameResize(Vector2 gameSize) {
    super.onGameResize(gameSize);
    size = gameSize;
  }
}
