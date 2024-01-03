import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SortPopUpMenu extends StatelessWidget {
  const SortPopUpMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: const Icon(Icons.sort,color: Colors.white),
        initialValue: '',
        color: const Color(0xFF6E5ADF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        position: PopupMenuPosition.under,
        itemBuilder: (context) {
          return [
            PopupMenuItem(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.white , width: 1))
                  ),
                  child: Center(
                    child: Text(
                      "جدید ترین ها",
                      style: GoogleFonts.vazirmatn(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                )),
            PopupMenuItem(
                child: Center(
                  child: Text(
                    "پربازدید ترین ها",
                    style: GoogleFonts.vazirmatn(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                    ),),
                )),
          ];

        });
  }
}