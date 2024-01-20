import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorLiveItem extends StatelessWidget {
  const DoctorLiveItem({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        // image
        Container(
          width: 116,
          height: 168,
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12)
          ),
          foregroundDecoration: BoxDecoration(
            color: Colors.black.withOpacity(0.20),
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(image,fit: BoxFit.cover)),
        ),
        // live text
        Positioned(
          top: 10,
          right: 15,
          child: Container(
            width: 45,
            height: 20,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: const Color(0xFFFA002F),
                borderRadius: BorderRadius.circular(4)
            ),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 80,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                ),
                const SizedBox(width: 4),
                Text("LIVE",style: GoogleFonts.rubik(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500)),

              ],
            ),
          ),
        ),
        // play icon
        Positioned(
          right: 0,
          left : 0,
          top: 50,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.play_circle_outline_sharp,color: Colors.white,size: 48,)),
        )
      ],
    );
  }
}