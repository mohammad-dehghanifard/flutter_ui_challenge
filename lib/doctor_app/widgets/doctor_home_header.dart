import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorHomeHeader extends StatelessWidget {
  const DoctorHomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 156,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF0EBE7E),Color(0xFF07D9AD)],
              begin: Alignment.topCenter,end: Alignment.bottomCenter
          ),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          )
      ),
      child: Row(
        children: [
          // text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi Handwerker!",style: GoogleFonts.rubik(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300)),
              Text("Find Your Doctor",style: GoogleFonts.rubik(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700))
            ],
          ),
          const Spacer(),
          //user image
          Image.asset("assets/doctor_ui/user.jpg")
        ],
      ),
    );
  }
}