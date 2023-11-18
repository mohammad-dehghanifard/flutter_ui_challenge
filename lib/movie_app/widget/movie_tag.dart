import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieTag extends StatelessWidget {
  const  MovieTag({
    super.key, required this.txt, required this.onTap, required this.selected,
  });
   
  final String txt;
  final VoidCallback onTap;
  final bool selected;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Visibility(
            visible: selected,
            child: Container(
              margin: const EdgeInsets.only(right: 6),
              width: 3,
              height: 20,
              decoration: BoxDecoration(
                color: const Color(0xFFA62720),
                borderRadius: BorderRadius.circular(4)
              ),
            ),
          ),
          Text(txt,style:GoogleFonts.interTight(
            fontSize: 16,
            color: selected ?Colors.white : Colors.white.withOpacity(0.4),
            fontWeight: FontWeight.w700,)),
        ],
      ),
    );
  }
}