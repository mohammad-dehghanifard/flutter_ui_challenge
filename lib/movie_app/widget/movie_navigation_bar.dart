import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'navigation_button.dart';

class MovieNavigationBar extends StatelessWidget {
  const MovieNavigationBar({
    super.key, required this.onTap,
  });

  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              onTap: () => onTap(0),
              icon: Icons.home,
              text: "Home"
          ),

          movieNavigationButton(
              onTap: () =>  onTap(1),
              icon: Icons.search,
              text: "Search"
          ),

          movieNavigationButton(
              onTap: () =>  onTap(2),
              icon: Icons.notifications_none,
              text: "Notification"
          ),

          movieNavigationButton(
              onTap: () => onTap(3),
              icon: Icons.person,
              text: "Person"
          ),

        ],
      ),
    );
  }
}