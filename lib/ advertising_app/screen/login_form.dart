import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/%20advertising_app/widget/ads_custom_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFormScreen extends StatelessWidget {
  const LoginFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0XFFFbF2FF),
      body: SafeArea(
        child: Column(
          children: [
            // header
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                color: Color(0XFFA41DDC),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/ads_ui/logo.png",height: 80),
                  Text("ثبت نام در هیتال",style: GoogleFonts.vazirmatn(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900))
                ],
              ),
            ),
            //form
            const Expanded(child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // full name text field
                        SizedBox(height: 40),
                        AdsCustomTextField(
                          label: "نام",
                          hint: "نام و نام خانوادگی خود را وارد کنید",
                        ),
                        // phone number text field
                        SizedBox(height: 40),
                        AdsCustomTextField(
                          label: "شماره موبایل",
                          hint: "شماره موبایل خود را وارد کنید",
                        )
                      ],
                    ),
                  ),
                )
            )),
            // button
            Padding(
              padding: const EdgeInsets.all(20),
              child: MaterialButton(
                onPressed: () {},
                minWidth: double.infinity,
                height: 48,
                color: const Color(0XFFA41DDC),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Text("ثبت نام",style:GoogleFonts.vazirmatn(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}



