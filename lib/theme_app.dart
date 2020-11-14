import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeApp() {
  return ThemeData(
    textTheme: GoogleFonts.dmSansTextTheme(),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Colors.transparent,
    ),
  );
}
