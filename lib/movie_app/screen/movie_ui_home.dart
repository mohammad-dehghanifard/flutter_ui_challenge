import 'package:flutter/material.dart';
import '../widget/movie_text_field.dart';

class MovieHomeScreen extends StatelessWidget {
  const MovieHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchTextController = TextEditingController();
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
            )
          ],
        ),
      ),
    );
  }
}

