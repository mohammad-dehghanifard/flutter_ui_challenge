import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetailHolder extends StatelessWidget {
  const MovieDetailHolder({
    super.key, required this.value,  this.title = '',

  });

  final dynamic value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(4)
      ),
      child: Text("$title$value",style : GoogleFonts.interTight(
        fontSize: 14,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      )),
    );
  }
}
