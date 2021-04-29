import 'dart:math';
import 'dart:ui';

import 'package:dino_game/constants.dart';
import 'package:dino_game/game-object.dart';
import 'package:dino_game/sprite.dart';
import 'package:flutter/widgets.dart';

List<Sprite> CACTI = [
  Sprite()
    ..imagePath = 'assets/images/cacti/cacti_group.png'
    ..imageWidth = 104
    ..imageHeight = 100,
  Sprite()
    ..imagePath = 'assets/images/cacti/cacti_large_1.png'
    ..imageWidth = 50
    ..imageHeight = 100,
  Sprite()
    ..imagePath = 'assets/images/cacti/cacti_large_2.png'
    ..imageWidth = 98
    ..imageHeight = 100,
  Sprite()
    ..imagePath = 'assets/images/cacti/cacti_small_1.png'
    ..imageWidth = 34
    ..imageHeight = 70,
  Sprite()
    ..imagePath = 'assets/images/cacti/cacti_small_2.png'
    ..imageWidth = 68
    ..imageHeight = 70,
  Sprite()
    ..imagePath = 'assets/images/cacti/cacti_small_3.png'
    ..imageWidth = 107
    ..imageHeight = 70,
];

class Cactus extends GameObject {
  Cactus({this.worldLocation}) : sprite = CACTI[Random().nextInt(CACTI.length)];

  final Sprite sprite;
  final Offset worldLocation;

  @override
  Rect getRect(Size screenSize, double runDistance) {
    return Rect.fromLTWH(
      (worldLocation.dx - runDistance) * WORLD_TO_PIXEL_RATIO,
      screenSize.height / 2 - sprite.imageHeight,
      sprite.imageWidth.toDouble(),
      sprite.imageHeight.toDouble(),
    );
  }

  @override
  Widget render() {
    return Image.asset(sprite.imagePath);
  }
}
