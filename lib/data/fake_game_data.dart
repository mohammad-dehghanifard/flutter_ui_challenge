import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../game_detail/widgets/game_info_item.dart';


class FakeGameData{
//================ game ui fake data ===========================================
  static List<String> sliders = [
    "assets/game_ui/poster1.jpg",
    "assets/game_ui/poster2.jpg",
    "assets/game_ui/poster3.png",
  ];
  static List<String> gallery = [
    "assets/game_ui/poster4.jpg",
    "assets/game_ui/poster5.jpg",
    "assets/game_ui/poster6.jpg",
    "assets/game_ui/poster7.jpg",
  ];
  static List<GameInfoItem> gameInfo = [
    const GameInfoItem(icon: CupertinoIcons.star, subtext: "4.2"),
    const GameInfoItem(icon: CupertinoIcons.download_circle, subtext: "+16M"),
    const GameInfoItem(icon: CupertinoIcons.arrow_down_doc, subtext: "120GB"),
    const GameInfoItem(icon: Icons.category_outlined, subtext: "shooter"),
  ];

//================ movie ui fake data ==========================================

 static List introItems = [];

}