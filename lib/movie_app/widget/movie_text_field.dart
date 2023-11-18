import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchMovieTextField extends StatelessWidget {
  const SearchMovieTextField({
    super.key,
    required this.textController, required this.hint, required this.prefix,
  });

  final TextEditingController textController;
  final String hint;
  final Widget prefix;


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0XFF19191B),
        hintText: hint,
        hintStyle: GoogleFonts.interTight(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w400,),
        prefixIcon: prefix,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}