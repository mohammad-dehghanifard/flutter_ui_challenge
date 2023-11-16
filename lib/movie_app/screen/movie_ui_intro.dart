import 'package:flutter/material.dart';

class MovieIntroScreen extends StatelessWidget {
  const MovieIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // poster
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset("assets/movie_ui/movie2.jpg").image,
                  fit: BoxFit.fill
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
