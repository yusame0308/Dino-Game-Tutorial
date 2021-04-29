import 'dart:ui';

import 'package:dino_game/sprite.dart';
import 'constants.dart';
import 'game-object.dart';
import 'package:flutter/widgets.dart';

Sprite cloudSprite = Sprite()
  ..imagePath = 'assets/images/cloud.png'
  ..imageWidth = 92
  ..imageHeight = 27;

class Cloud extends GameObject {
  Cloud({this.worldLocation});

  final Offset worldLocation;

  @override
  Rect getRect(Size screenSize, double runDistance) {
    return Rect.fromLTWH(
      (worldLocation.dx - runDistance) * WORLD_TO_PIXEL_RATIO / 5,
      screenSize.height / 5 - cloudSprite.imageHeight - worldLocation.dy,
      cloudSprite.imageWidth.toDouble(),
      cloudSprite.imageHeight.toDouble(),
    );
  }

  @override
  Widget render() {
    return Image.asset(cloudSprite.imagePath);
  }
}
