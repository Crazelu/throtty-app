import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:throtty/presentation/style/palette.dart';

class TextStyles {
  static final h1TextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    color: Palette.primaryColorDark,
  );
  static final h2TextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    color: Palette.primaryColorDark,
  );
  static final h3TextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: Palette.primaryColorDark,
  );
  static final buttonTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: Palette.primaryColorLight,
  );

  static final bodyTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: Palette.primaryColorDark,
  );
  static final mediumTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: Palette.primaryColorDark,
  );
}
