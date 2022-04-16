import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _primaryColor = Color(0xffFF8A00);
const _primaryColorLight = Color(0xffFFFFFF);

ThemeData lightTheme(BuildContext context) => ThemeData(
      textTheme: GoogleFonts.rubikTextTheme(
        Theme.of(context).textTheme,
      ),
      primaryColor: _primaryColor,
      primaryColorLight: _primaryColorLight,
      primaryColorDark: const Color(0xff424242),
      errorColor: const Color(0xffFF3C3C),
      backgroundColor: _primaryColorLight,
      scaffoldBackgroundColor: _primaryColorLight,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: _primaryColor,
      ),
      colorScheme: const ColorScheme.light(
        secondary: Color(0xff63EA4D),
      ),
    );
