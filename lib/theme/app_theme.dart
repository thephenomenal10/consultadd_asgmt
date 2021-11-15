import 'package:consultadd_asgmt/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppTheme { appTheme }

final appThemeData = {
  AppTheme.appTheme: ThemeData(
      brightness: Brightness.light,
      primaryColor: blueColor,
      scaffoldBackgroundColor: white1,
      primaryColorLight: white1,
      textTheme: TextTheme(
        headline1: GoogleFonts.nunitoSans(
          fontWeight: FontWeight.bold,
          letterSpacing: 0.3,
          color: Colors.white,
          fontSize: 36,
        ),
        headline2: GoogleFonts.nunitoSans(
          fontWeight: FontWeight.w700,
          letterSpacing: 0.1,
          color: Colors.black,
          fontSize: 16,
        ),
        headline3: GoogleFonts.nunitoSans(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.1,
          color: Colors.black,
          fontSize: 16,
        ),
        subtitle1: GoogleFonts.nunitoSans(
          letterSpacing: 0.3,
          color: Colors.white54,
          fontSize: 16,
        ),
        subtitle2: GoogleFonts.nunitoSans(
          letterSpacing: 0.0,
          fontWeight: FontWeight.w600,
          color: blueColor,
          fontSize: 14,
        ),
        caption: GoogleFonts.nunitoSans(
          letterSpacing: 0.0,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 12,
        ),
      )),
};
