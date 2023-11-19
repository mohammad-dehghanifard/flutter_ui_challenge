import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/movie_app/screen/movie_ui_home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widget/navigation_button.dart';

class MovieMainScreen extends StatelessWidget {
  const MovieMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // screen
          Positioned.fill(
            child: IndexedStack(
              index: 0,
              children: [
                const MovieHomeScreen(),
                Container(color: const Color(0xFF0A0B15)),
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
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 80,
              decoration: const BoxDecoration(
                  color: Color(0xFF19191B),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32)
                  )
              ),
              child: GNav(
                tabBackgroundColor: const Color(0xFFD12F26),
                activeColor: Colors.white,
                gap: 8,
                padding: const EdgeInsets.all(8),
                tabs: [
                  movieNavigationButton(
                      onTap: () {},
                      icon: Icons.home,
                      text: "Home"
                  ),

                  movieNavigationButton(
                      onTap: () {},
                      icon: Icons.search,
                      text: "Search"
                  ),

                  movieNavigationButton(
                      onTap: () {},
                      icon: Icons.notifications_none,
                      text: "Notification"
                  ),

                  movieNavigationButton(
                      onTap: () {},
                      icon: Icons.person,
                      text: "Person"
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

