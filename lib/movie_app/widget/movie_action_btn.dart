import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieActionBtn extends StatelessWidget {
  const MovieActionBtn({
    super.key, required this.text, required this.icon, required this.onTap,
  });

  final String text;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,style : GoogleFonts.interTight(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        )),

        IconButton(
            onPressed: () {},
            icon: Icon(icon,color: Colors.white)),

      ],
    );
  }
}