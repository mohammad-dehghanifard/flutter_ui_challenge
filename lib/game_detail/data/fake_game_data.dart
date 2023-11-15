import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/game_info_item.dart';

class FakeGameData{
  static List<String> sliders = [
    "assets/images/poster1.jpg",
    "assets/images/poster2.jpg",
    "assets/images/poster3.png",
  ];

  static List<String> gallery = [
    "assets/images/poster4.jpg",
    "assets/images/poster5.jpg",
    "assets/images/poster6.jpg",
    "assets/images/poster7.jpg",
  ];


  static List<GameInfoItem> gameInfo = [
    const GameInfoItem(icon: CupertinoIcons.star, subtext: "4.2"),
    const GameInfoItem(icon: CupertinoIcons.download_circle, subtext: "+16M"),
    const GameInfoItem(icon: CupertinoIcons.arrow_down_doc, subtext: "120GB"),
    const GameInfoItem(icon: Icons.category_outlined, subtext: "shooter"),
  ];

}