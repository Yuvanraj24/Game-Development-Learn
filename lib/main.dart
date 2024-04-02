import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:game_learn/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setPortrait();
  runApp(const GameApp());
}


