import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/movie_app/model/intro_model.dart';
import 'package:flutter_ui_challenge/movie_app/model/movie_model.dart';

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
 static List<String> movieSlider = [
   "assets/movie_ui/movieslider1.jpg",
   "assets/movie_ui/movieslider2.jpg",
   "assets/movie_ui/movieslider3.jpg",
   "assets/movie_ui/movieslider4.jpg",
   "assets/movie_ui/movieslider5.jpg",
 ];
 static List<String> tags = [
   'action',
   'comedy',
   'Criminal',
   'Science fiction',
   'the musical',
   'Biography',
   'Documentary',
   'scary',
   'historical',
   'war'
 ];
 static List<MovieModel> allMovie = [
   MovieModel(
       movieName: "The BatMan",
       score: 4.2,
       imageUrl: "assets/movie_ui/batman.png",
       publishYear: 2022,
       content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.",
       watchTime: "42 min",
       liked: true),
   MovieModel(
       movieName: "Black Mirror",
       score: 3,
       imageUrl: "assets/movie_ui/blackmirror.jpg",
       publishYear: 2018,
       content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.",
       watchTime: "14 min",
       liked: false),
   MovieModel(
       movieName: "guardians of the galaxy",
       score: 5,
       imageUrl: "assets/movie_ui/gdngalaxy.jpg",
       publishYear: 2023,
       content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.",
       watchTime: "22 min",
       liked: false),
   MovieModel(
       movieName: "Mission: Impossible Dead Reckoning Part One",
       score: 4.0,
       imageUrl: "assets/movie_ui/mission.jpg",
       publishYear: 2023,
       content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.",
       watchTime: "90 min",
       liked: true),
   MovieModel(
       movieName: "Start Wars EP7",
       score: 4.0,
       imageUrl: "assets/movie_ui/starwars.jpg",
       publishYear: 2020,
       content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.",
       watchTime: "39 min",
       liked: true),
   MovieModel(
       movieName: "Thor : The Dark World",
       score: 5,
       imageUrl: "assets/movie_ui/thor.jpg",
       publishYear: 2013,
       content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.",
       watchTime: "65 min",
       liked: true),
 ];



}