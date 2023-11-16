import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/movie_app/model/intro_model.dart';

import '../game_detail/widgets/game_info_item.dart';


class FakeData{
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

 static List<IntroModel> introItems = [
   IntroModel(
       title: "All movies and series with all qualities",
       content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.",
       imagePath: "assets/movie_ui/movie1.jpg"
   ),
   IntroModel(
       title: "Watch online with your friends!",
       content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.",
       imagePath: "assets/movie_ui/movie2.jpg"
   ),
   IntroModel(
       title: "Cheap and affordable subscription",
       content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.",
       imagePath: "assets/movie_ui/movie3.jpg"
   ),
   IntroModel(
       title: "View the latest movies and series",
       content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.",
       imagePath: "assets/movie_ui/movie4.jpg"
   ),


 ];

}