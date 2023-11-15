import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/game_detail/data/fake_game_data.dart';
import '../widgets/back_btn.dart';
import '../widgets/detail_app_bar.dart';

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
             options: CarouselOptions(autoPlay: true))
        ],
      ),
    );
  }
}


