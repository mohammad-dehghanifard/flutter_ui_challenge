import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/movie_app/screen/movie_ui_home.dart';
import '../widget/movie_navigation_bar.dart';

class MovieMainScreen extends StatefulWidget {
  const MovieMainScreen({super.key});

  @override
  State<MovieMainScreen> createState() => _MovieMainScreenState();
}

class _MovieMainScreenState extends State<MovieMainScreen> {
  int _selectedScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // screen
          Positioned.fill(
            child: IndexedStack(
              index: _selectedScreenIndex,
              children: [
                const MovieHomeScreen(),
                Container(width: double.infinity,color: const Color(0xFF0A0B15)),
                Container(color: const Color(0xFF0A0B15)),
                Container(color: const Color(0xFF0A0B15)),
              ],
            ),
          ),
          // bottom navigation
           Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: MovieNavigationBar(
              onTap: (newIndex) {
                setState(() {
                  _selectedScreenIndex = newIndex;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}



