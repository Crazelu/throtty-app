import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:throtty/presentation/style/palette.dart';

ThemeData lightTheme(BuildContext context) => ThemeData(
      textTheme: GoogleFonts.rubikTextTheme(
        Theme.of(context).textTheme,
      ),
      primaryColor: Palette.primaryColor,
      primaryColorLight: Palette.primaryColorLight,
      primaryColorDark: Palette.primaryColorDark,
      errorColor: const Color(0xffFF3C3C),
      backgroundColor: Palette.primaryColorLight,
      scaffoldBackgroundColor: Palette.primaryColorLight,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Palette.primaryColor,
      ),
      colorScheme: const ColorScheme.light(
        secondary: Color(0xff63EA4D),
      ),
      appBarTheme: AppBarTheme(
        color: Palette.primaryColorLight,
        elevation: 1,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: GoogleFonts.rubik(
          color: const Color(0xff1C1B1F),
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
        ),
        iconTheme: const IconThemeData(color: Palette.primaryColorDark),
        actionsIconTheme: const IconThemeData(color: Palette.primaryColorDark),
      ),
    );
