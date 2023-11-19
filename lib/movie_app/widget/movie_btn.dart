import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieBtn extends StatelessWidget {
  const MovieBtn({
    super.key, required this.onTap, required this.text,this.radius = 0,this.padding = 0
  });

  final VoidCallback onTap;
  final String text;
  final double radius;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            minimumSize: const MaterialStatePropertyAll(Size(double.infinity,40)),
            backgroundColor: const MaterialStatePropertyAll(Color(0xFFD12F26)),
          shape: MaterialStatePropertyAll( RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)))
        ),
        onPressed: onTap,
        child: Padding(
          padding:  EdgeInsets.all(padding),
          child: Text(text,style: GoogleFonts.interTight(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700,),),
        ));
  }
}