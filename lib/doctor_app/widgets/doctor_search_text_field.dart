import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorSearchTextField extends StatelessWidget {
  const DoctorSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: "Search..... ",
        prefixIcon: const Icon(Icons.search),
        hintStyle: GoogleFonts.rubik(color: const Color(0xFF677294),fontSize: 15,fontWeight: FontWeight.w300),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)
        ),
      ),
    );
  }
}