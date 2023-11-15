import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/game_detail/data/fake_game_data.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/back_btn.dart';
import '../widgets/detail_app_bar.dart';
import '../widgets/favorite_btn.dart';

class GameDetailScreen extends StatelessWidget {
  const GameDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBDDDF),
      appBar: DetailAppBar(
        title: "Game Detail",
        leading: BackBtn(onTap: () {},),
      ),
      body:  Column(
        children: [
          const SizedBox(height: 8),
          // slider
         CarouselSlider.builder(
             itemCount: FakeGameData.sliders.length,
             itemBuilder: (context, index, realIndex) => Container(
                width: 360,
                 height: 64,
                 padding: const EdgeInsets.all(12),
                 child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                     child: Image.asset(FakeGameData.sliders[index],fit: BoxFit.fill,))
             ),
             options: CarouselOptions(autoPlay: true)),
          const SizedBox(height: 24),
          // game detail
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                  color: CupertinoColors.tertiarySystemBackground,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // name and favorite btn
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //name
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //game info
                          Text(
                            "call of duty modern warfare 3",
                            style: GoogleFonts.alata(
                                color: CupertinoColors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                            ),),
                          Text(
                            "action - shooter",
                            style: GoogleFonts.alata(
                                color: CupertinoColors.inactiveGray,
                                fontWeight: FontWeight.w400,
                                fontSize: 14
                            ),),
                        ],
                      ),
                      // favorite btn
                      FavoriteBtn(onTap: () {}),
                      const SizedBox()
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


