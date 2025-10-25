import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle headline = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    height: 1.3,
    letterSpacing: 0.5,
  );

  static const TextStyle title = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,

    height: 1.2,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,

    height: 1.5,
  );

  static const TextStyle small = TextStyle(fontSize: 14, height: 1.4);

  static TextStyle primary({Color? color}) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: color ?? Colors.blue,
  );

  static const TextStyle whiteBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle italic = TextStyle(
    fontSize: 16,
    fontStyle: FontStyle.italic,
  );

  static const TextStyle underline = TextStyle(
    fontSize: 16,
    decoration: TextDecoration.underline,
    color: Colors.blueAccent,
  );
}
