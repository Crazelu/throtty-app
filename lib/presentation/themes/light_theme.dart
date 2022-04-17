import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

const _primaryColor = Color(0xffFF8A00);
const _primaryColorDark = Color(0xff424242);
const _primaryColorLight = Color(0xffFFFFFF);

ThemeData lightTheme(BuildContext context) => ThemeData(
      textTheme: GoogleFonts.rubikTextTheme(
        Theme.of(context).textTheme,
      ),
      primaryColor: _primaryColor,
      primaryColorLight: _primaryColorLight,
      primaryColorDark: _primaryColorDark,
      errorColor: const Color(0xffFF3C3C),
      backgroundColor: _primaryColorLight,
      scaffoldBackgroundColor: _primaryColorLight,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: _primaryColor,
      ),
      colorScheme: const ColorScheme.light(
        secondary: Color(0xff63EA4D),
      ),
      appBarTheme: AppBarTheme(
        color: _primaryColorLight,
        elevation: 1,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: GoogleFonts.rubik(
          color: const Color(0xff1C1B1F),
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
        ),
        iconTheme: const IconThemeData(color: _primaryColorDark),
        actionsIconTheme: const IconThemeData(color: _primaryColorDark),
      ),
    );
