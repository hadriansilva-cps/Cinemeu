import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData tema() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple.shade400),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.silkscreen(fontSize: 14),
      bodyLarge: GoogleFonts.silkscreen(fontSize: 16),
      bodySmall: GoogleFonts.silkscreen(fontSize: 12),
      titleSmall: GoogleFonts.silkscreen(),
      titleMedium: GoogleFonts.silkscreen(),
      titleLarge: GoogleFonts.silkscreen(),
    ),
  );
}
