import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/data/fake_game_data.dart';
import '../widget/movie_indicator.dart';
import '../widget/movie_list_header.dart';
import '../widget/movie_slider_item.dart';
import '../widget/movie_tag.dart';
import '../widget/movie_text_field.dart';
import '../widget/watch_movie_item.dart';

class MovieHomeScreen extends StatefulWidget {
   const MovieHomeScreen({super.key});

  @override
  State<MovieHomeScreen> createState() => _MovieHomeScreenState();
}

class _MovieHomeScreenState extends State<MovieHomeScreen> {
  String selectTag = FakeData.tags.first;

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
            ),
            const SizedBox(height: 24),
            // tags
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ListView.builder(
                  itemCount: FakeData.tags.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final tag = FakeData.tags[index];
                    return Padding(
                      padding:  EdgeInsets.fromLTRB(
                          index == 0? 12 : 0,
                          0,
                          12,
                          0),
                      child: MovieTag(
                        onTap: () {
                          setState(() {
                            selectTag = FakeData.tags[index];
                          });
                        },
                        txt: tag,
                        selected: selectTag == tag,
                      ),
                    );
                  },),
            ),

            //Continue Watch header
            Padding(
              padding: const EdgeInsets.all(12),
              child: MovieListHeader(
                title: "Continue Watch",
                onPressed: () {},
              ),
            ),
            // Continue Watch List
            SizedBox(
              height: 140,
              child: ListView.builder(
                  itemCount: FakeData.allMovie.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(
                          index == 0? 12 : 0,
                          0,
                          12,
                          0),
                      child: WatchMovieItem(movie: FakeData.allMovie[index]),
                    );
                  },
              ),
            )
          ],
        ),
      ),
    );
  }
}









