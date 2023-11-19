import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/movie_app/model/movie_model.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieListItem extends StatelessWidget {
  const MovieListItem({
    super.key, required this.movie, required this.onTap,
  });

  final MovieModel movie;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 90,
            height: 140,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                    image: Image.asset(movie.imageUrl).image,
                    fit: BoxFit.fill
                )
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 80 ,
            child: Center(
              child: Text(movie.movieName,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.interTight(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),),
            ),
          )
        ],
      ),
    );
  }
}