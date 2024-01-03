import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdsListItem extends StatelessWidget {
  const AdsListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 180,
        child: Stack(
          children: [
            // main container
            Align(
              alignment: Alignment.center,
              child: Container(
                width: double.infinity,
                height: 150,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(left: 12),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF009CDF),width: 1),
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xFF009CDF),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(child: Text("حضوری",style: GoogleFonts.vazirmatn(color: Colors.white,fontWeight: FontWeight.bold))),
                      ),
                    ),
                    //ability
                    Row(
                      children: [
                        const SizedBox(width: 8),
                        Text("مهارت های مورد نیاز:",style: GoogleFonts.vazirmatn(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        const SizedBox(width: 8),
                        Text("زبان دارت و معماری کلین",style: GoogleFonts.vazirmatn(color: Colors.white,fontSize: 14)),

                      ],
                    ),
                    const SizedBox(height: 4),
                    // price
                    Row(
                      children: [
                        const SizedBox(width: 8),
                        Text("حقوق پیشنهادی:",style: GoogleFonts.vazirmatn(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        const SizedBox(width: 8),
                        Text(" 10 تا 20 میلیون",style: GoogleFonts.vazirmatn(color: Colors.white,fontSize: 14)),
                      ],
                    ),
                    // delete icon
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 35,
                        height: 35,
                        margin: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            color: Color(0xFF009CDF),
                            shape: BoxShape.circle
                        ),
                        child: const Icon(CupertinoIcons.delete,color: Colors.white,size: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // ads title
            Container(
              height: 30,
              margin: const EdgeInsets.only(right: 30),
              padding: const EdgeInsets.only(left: 15,right: 15,top: 1),
              decoration: BoxDecoration(
                  color: const Color(0xFF5C45FB),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.white)
              ),
              child: Text("استخدام برنامه نویس فلاتر",style: GoogleFonts.vazirmatn(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 17)),
            ),
            // view btn
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 80,
                height: 30,
                margin: const EdgeInsets.only(right: 30),
                decoration: const BoxDecoration(
                    color: Color(0xFF5C45FB),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                      topLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    )
                ),
                child: Center(child: Text("مشاهده",style: GoogleFonts.vazirmatn(fontSize: 14,color: Colors.white))),
              ),
            )
          ],
        ),
      ),
    );
  }
}