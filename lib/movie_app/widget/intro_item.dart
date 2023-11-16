import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/movie_app/model/intro_model.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroItem extends StatelessWidget {
  const IntroItem({
    super.key, required this.intro,
  });
  final IntroModel intro;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // title
        Text(
          intro.title,
          style: GoogleFonts.interTight(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w700,),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        // content
        Text(
          intro.content,
          style: GoogleFonts.interTight(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w400,),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}