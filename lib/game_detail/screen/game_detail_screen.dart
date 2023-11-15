import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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

        ],
      ),
    );
  }
}


