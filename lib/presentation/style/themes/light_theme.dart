import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:throtty/presentation/style/dimensions.dart';
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
        cursorColor: Colors.black,
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
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Palette.fillColorLight,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: Palette.hintColorLight,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Palette.primaryColorLight,
          ),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Palette.primaryColor.withOpacity(.4),
          ),
          side: MaterialStateProperty.resolveWith(
            (states) => const BorderSide(color: Palette.primaryColor),
          ),
          minimumSize: MaterialStateProperty.resolveWith(
            (states) => Size(
              Dimensions.mobileOutlinedButtonMinWidth.w,
              Dimensions.mobileButtonHeight.h,
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Palette.primaryColor,
          ),
          minimumSize: MaterialStateProperty.resolveWith(
            (states) => Size(
              Dimensions.mobileButtonMinWidth.w,
              Dimensions.mobileButtonHeight.h,
            ),
          ),
        ),
      ),
    );
