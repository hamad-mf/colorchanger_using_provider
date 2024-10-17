import 'package:flutter/material.dart';

class ColorChangerController with ChangeNotifier {
  Color currentColor = Colors.purple;

  static List colors = [
    Colors.yellow,
    Colors.green,
    Colors.white,
    Colors.blue,
    Colors.red,
  ];
  updateColor(Color newColor) {
    currentColor = newColor;
    notifyListeners();
  }
}
