import 'dart:ui';

import 'package:flutters/components/core/gameobject.dart';
import 'package:flutters/components/core/renderable.dart';
import 'package:flutters/flutters-game.dart';

class Obstacle extends GameObject implements Renderable {
  bool isMoving;
  Obstacle(FluttersGame game, double x, double y, double width, double height,
      bool isMoving)
      : super(game, x, y, width, height) {
    this.isMoving = isMoving;
  }

  @override
  void render(Canvas c) {
    Rect rect = Rect.fromLTWH(x, y, width, height);
    Paint paint = Paint();
    paint.color = Color(colorCode);
    c.drawRect(rect, paint);
  }

  @override
  void update(double t) {
    // TODO: implement update
  }
}
