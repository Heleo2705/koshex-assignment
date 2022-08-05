import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyleConstants {
  static smallText({Color? color}) => TextStyle(
        fontSize: 10.sp,
        color: color ?? Colors.white,
        fontWeight: FontWeight.w400,
      );

  static extraSmallText({Color? color}) => TextStyle(
        fontSize: 8.sp,
        color: color ?? Colors.white,
        fontWeight: FontWeight.w400,
      );

  static h1Text({Color? color}) => TextStyle(
        fontSize: 20.sp,
        color: color ?? Colors.white,
        height: 1.2,
        fontWeight: FontWeight.w700,
      );
}
