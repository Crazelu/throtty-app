// This file defines helper methods by using extension on specific dart/flutter classes

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension StringExtensions on String {
  String get png => "assets/$this.png";
}

extension CustomContext on BuildContext {
  double screenHeight([double percent = 1]) =>
      MediaQuery.of(this).size.height * percent;

  double screenWidth([double percent = 1]) =>
      MediaQuery.of(this).size.width * percent;
}

extension PaddingExtension on Widget {
  Widget get horizontalPad => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: this,
      );
}
