import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdsCustomTextField extends StatelessWidget {
  const AdsCustomTextField({super.key, required this.label, required this.hint,this.inputType = TextInputType.text});
  final String label;
  final String hint;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(label,style:GoogleFonts.vazirmatn(fontSize: 18,color: const Color(0xFF00685E),fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Directionality(
          textDirection: TextDirection.rtl,
          child: TextFormField(
            keyboardType: inputType,
            decoration: InputDecoration(
                filled: true,
                hintText: hint,
                fillColor: Colors.white,
                hintStyle: GoogleFonts.vazirmatn(color: const Color(0xFF979797)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none
                )

            ),
          ),
        )
      ],
    );
  }
}