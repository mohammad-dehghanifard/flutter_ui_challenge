import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/data/fake_game_data.dart';
import 'package:flutter_ui_challenge/doctor_app/widgets/doctor_home_header.dart';
import 'package:flutter_ui_challenge/doctor_app/widgets/doctor_live_item.dart';
import 'package:flutter_ui_challenge/doctor_app/widgets/doctor_search_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> doctorLives = [
      "assets/doctor_ui/live1.jpg",
      "assets/doctor_ui/live3.jpg",
      "assets/doctor_ui/live2.jpg",
      "assets/doctor_ui/live1.jpg",
      "assets/doctor_ui/live3.jpg",
      "assets/doctor_ui/live1.jpg",
    ];


    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Stack(
            children: [
              // blue
              Positioned(
                top: 145,
                child: Container(
                  width: 216,
                  height: 216,
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    boxShadow: [
                      BoxShadow(color: const Color(0xFF61CEFF).withOpacity(0.30),blurRadius: 50)
                    ]
                  ),
                ),
              ),
              // green
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 216,
                  height: 216,
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                    ),
                    boxShadow: [
                      BoxShadow(color: const Color(0xFF0EBE7E).withOpacity(0.30),blurRadius: 50)
                    ]
                  ),
                ),
              ),
              // header
              const DoctorHomeHeader(),
              // search text field
              const Positioned(
                top: 130,
                right: 30,
                left: 30,
                child: DoctorSearchTextField(),
              ),
              //body
              Positioned(
                top: 190,
                right: 0,
                left: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // doctor lives
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text("Live Doctors",style: GoogleFonts.rubik(color: const Color(0xFF333333),fontSize: 18,fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                      height: 168,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: doctorLives.length,
                          itemBuilder: (context, index) {
                            return DoctorLiveItem(image: doctorLives[index]);
                          },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}






