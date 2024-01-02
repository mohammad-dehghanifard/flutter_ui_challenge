import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key, required this.onTap, required this.gender, required this.value,
  });

  final Function() onTap;
  final String gender;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Radio button
            AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: value? const Color(0xFF00685E) : Colors.white,
                  border: Border.all(color: value? Colors.white :Colors.grey)
              ),
            ),
            Text(gender,style: GoogleFonts.vazirmatn(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}
