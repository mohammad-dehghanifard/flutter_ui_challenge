import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/%20advertising_app/widget/ads_list_item.dart';
import 'package:flutter_ui_challenge/%20advertising_app/widget/filter_bottom_sheet.dart';
import 'package:flutter_ui_challenge/%20advertising_app/widget/sort_pop_up_menu.dart';
import 'package:google_fonts/google_fonts.dart';

class AdsHomeScreen extends StatelessWidget {
  const AdsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // header
        Container(
          width: double.infinity,
          height: 60,
          color: const Color(0xFF6E5ADF),
          child: Row(
            children: [
              // Drawer
              IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(Icons.menu,color: Colors.white,size: 30)),
              Text("آگهی های هیتال",style: GoogleFonts.vazirmatn(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 18)),
              const Spacer(),
              // filter icon
              GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: const Color(0xFF6E5ADF),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )
                      ),
                      builder: (context) {
                      return const FilterBottomSheet();
                    },);
                  },
                  child: const Icon(Icons.filter_alt_outlined,color: Colors.white)),
              // popup menu
              const Directionality(
                textDirection: TextDirection.ltr,
                child: SortPopUpMenu(),
              ),
            ],
          ),
        ),
        const AdsListItem()
      ],
    );
  }
}




