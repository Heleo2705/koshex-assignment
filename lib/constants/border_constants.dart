import 'package:flutter/material.dart';

class BorderConstants {
  static Border outerBorder({Color? color}) =>
      Border.all(width: 2, color: color ?? Colors.grey[300]!);
}
