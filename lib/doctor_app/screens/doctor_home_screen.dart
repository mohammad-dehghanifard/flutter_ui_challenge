import 'package:flutter/material.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Stack(
            children: [
              // blue
              Container(
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
              Column(
                children: [

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
