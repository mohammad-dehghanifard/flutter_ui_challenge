import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
     List<String> ability = ["فلاتر","لاراول","یونیتی","پایتون","جاوا اسکریپت"];
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          // title
          Text("مهارت مورد نظر خود را انتخاب کنید",style: GoogleFonts.vazirmatn(fontWeight: FontWeight.w900,fontSize: 18,color: Colors.white),),
          const SizedBox(height: 20),
          // ability list
          Column(
            children: List.generate(ability.length, (index) {
              return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white,width: 1)
                  ),
                  child: Center(child: Text(ability[index],style: GoogleFonts.vazirmatn(fontWeight: FontWeight.bold,color: Colors.white),)));
            }),
          )
        ],
      ),
    );
  }
}
