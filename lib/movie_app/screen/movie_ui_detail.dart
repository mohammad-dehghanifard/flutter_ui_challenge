import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/movie_app/model/movie_model.dart';
import 'package:flutter_ui_challenge/movie_app/widget/movie_btn.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/movie_detail_holder.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key, required this.movie});
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0B15),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            //moviePoster
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(movie.imageUrl).image,
                  fit: BoxFit.fill
                )
              ),
            ),
            // details
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                width: double.infinity,
                height: 500,
                padding: const EdgeInsets.fromLTRB(12, 64, 12, 0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black,Colors.black.withOpacity(0.1)],
                      stops: const [0.9,0.1],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //movie name
                    Text(movie.movieName,style : GoogleFonts.interTight(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    )),
                    const SizedBox(height: 12),
                    // score and publish year
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // score
                        MovieDetailHolder(
                          value: movie.score,
                          title: "Imdb : ",
                        ),

                        MovieDetailHolder(
                          value: movie.publishYear,
                        ),
                        const MovieDetailHolder(
                          value: "HDR",
                        ),
                    ],),
                    
                    MovieBtn(

                        onTap: () {},
                        text: "Play Movie!")
                  ],
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}

