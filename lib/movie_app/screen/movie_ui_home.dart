import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/data/fake_game_data.dart';
import '../widget/movie_indicator.dart';
import '../widget/movie_slider_item.dart';
import '../widget/movie_text_field.dart';

class MovieHomeScreen extends StatelessWidget {
  const MovieHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchTextController = TextEditingController();
    final PageController sliderController = PageController();
    return Scaffold(
      backgroundColor: const Color(0xFF0A0B15),
      body: SafeArea(
        child: Column(
          children: [
            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              child: SearchMovieTextField(
                  textController: searchTextController,
                  hint: "search Movies...",
                  prefix: const Icon(Icons.search, color: Colors.white),
              ),
            ),
            const SizedBox(height: 12),
            // sliders
            SizedBox(
              height: 160,
              child: PageView.builder(
                  controller: sliderController,
                  itemCount: FakeData.movieSlider.length,
                  itemBuilder: (context, index) =>  MovieSliderItem(imagePath: FakeData.movieSlider[index])
              ),
            ),
            const SizedBox(height: 12),
            // Indicator
            MovieIndicator(
              pageController: sliderController,
              count: FakeData.movieSlider.length,
              dotColor: Colors.white.withOpacity(0.2),
              dotWidth: 24,
              dotHeight: 1,
            )
          ],
        ),
      ),
    );
  }
}


