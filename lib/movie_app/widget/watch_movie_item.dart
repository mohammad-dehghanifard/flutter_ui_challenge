import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/movie_app/widget/watch_time_movie.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/movie_model.dart';

class WatchMovieItem extends StatelessWidget {
  const WatchMovieItem({
    super.key, required this.movie,
  });
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 260,
          foregroundDecoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4)
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: Image.asset(movie.imageUrl).image,
                  fit: BoxFit.fill
              ),
              color: Colors.red
          ),
        ),
        // Watch time value
        const Positioned(
          bottom: 10,
          right: 0,
          left: 0,
          child: WatchTimeMovie(value: 0.9),
        ),
        // Watch time text
        Positioned(
            bottom: 48,
            right: 8,
            child: Text(
              movie.watchTime,
              style: GoogleFonts.interTight(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            )
        )
      ],
    );
  }
}