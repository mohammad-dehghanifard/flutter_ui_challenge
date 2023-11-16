import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieBtn extends StatelessWidget {
  const MovieBtn({
    super.key, required this.onTap, required this.text,
  });

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            minimumSize: MaterialStatePropertyAll(Size(double.infinity,40)),
            backgroundColor: MaterialStatePropertyAll(Color(0xFFD12F26))
        ),
        onPressed: onTap,
        child: Text(text,style: GoogleFonts.interTight(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w700,),));
  }
}