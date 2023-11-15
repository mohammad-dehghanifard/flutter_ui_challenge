import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/game_detail/data/fake_game_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:readmore/readmore.dart';
import '../widgets/back_btn.dart';
import '../widgets/detail_app_bar.dart';
import '../widgets/favorite_btn.dart';
import '../widgets/gallery_image_item.dart';
import '../widgets/game_info_item.dart';

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
              decoration: const BoxDecoration(
                  color: CupertinoColors.tertiarySystemBackground,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  )),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // name and favorite btn
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        ],
                      ),
                    ),
                    //game info
                    Container(
                      margin: const EdgeInsets.only(top: 16,left: 12,right: 12),
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: SizedBox(
                        height: 50,
                        child: ListView.builder(
                          itemCount: FakeGameData.gameInfo.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                            var game = FakeGameData.gameInfo[index];
                              return GameInfoItem(
                                icon: game.icon,
                                subtext: game.subtext,
                              );
                            },
                        ),
                      )
                    ),
                    const SizedBox(height: 24),
                    // photo gallery
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        itemCount: FakeGameData.gallery.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                        return GalleryImageItem(index: index);
                      },)
                    ),
                     // content
                     Padding(
                      padding: const EdgeInsets.all(12),
                      child: ReadMoreText(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        trimLines: 3,
                        colorClickableText: CupertinoColors.activeOrange,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        moreStyle: GoogleFonts.alata(color: CupertinoColors.activeOrange,fontWeight: FontWeight.w700),
                        style: GoogleFonts.alata(color: CupertinoColors.black,fontWeight: FontWeight.w400),
                      ),
                    ),
                    // install btn
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: ElevatedButton(
                            onPressed: () {},
                            style:  ButtonStyle(
                              elevation: const MaterialStatePropertyAll(0),
                              backgroundColor: const MaterialStatePropertyAll(CupertinoColors.activeOrange),
                              minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 50)),
                              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))
                            ),
                            child: Text("Install",style: GoogleFonts.alata(color: CupertinoColors.white,fontSize: 24,fontWeight: FontWeight.w700))),
                      ),
                    )

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}






