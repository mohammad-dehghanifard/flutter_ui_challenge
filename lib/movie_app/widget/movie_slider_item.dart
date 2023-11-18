import 'package:flutter/material.dart';

class MovieSliderItem extends StatelessWidget {
  const MovieSliderItem({
    super.key, required this.imagePath,
  });
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      width: 200,
      height: 60,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset(imagePath).image,
              fit: BoxFit.fill
          ),
          borderRadius: BorderRadius.circular(12)
      ),
    );
  }
}
