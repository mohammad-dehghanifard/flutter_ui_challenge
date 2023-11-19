import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

GButton movieNavigationButton({
  required IconData icon,
  required String text,
  required Function() onTap,
}) {
  return GButton(
    onPressed: onTap,
    icon: icon,
    iconColor: Colors.white,
    textColor: Colors.white,
    textStyle: GoogleFonts.interTight(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    ),
    text: text,
  );
}
