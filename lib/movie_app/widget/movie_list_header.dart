import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieListHeader extends StatelessWidget {
  const MovieListHeader({
    super.key, required this.onPressed, required this.title,
  });
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: GoogleFonts.interTight(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700,)),

        TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
              overlayColor: MaterialStatePropertyAll(const Color(0xFFA62720).withOpacity(0.2))
          ),
          child: Text("see all",style: GoogleFonts.interTight(
            fontSize: 14,
            color: const Color(0xFFA62720),
            fontWeight: FontWeight.w400,)),)
      ],
    );
  }
}
