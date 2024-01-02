import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdsHomeScreen extends StatelessWidget {
  const AdsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 60,
          color: const Color(0xFF6E5ADF),
          child: Row(
            children: [
              // Drawer
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu,color: Colors.white,size: 30)),
              Text("آگهی های هیتال",style: GoogleFonts.vazirmatn(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 18)),
              const Spacer(),
              // filter icon
              GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.filter_alt_outlined,color: Colors.white)),
              // sort icon
              Directionality(
                textDirection: TextDirection.ltr,
                child: IconButton(onPressed: () {},icon: const Icon(Icons.sort,color: Colors.white)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
