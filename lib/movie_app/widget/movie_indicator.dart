import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MovieIndicator extends StatelessWidget {
  const MovieIndicator({
    super.key,
    required this.pageController,
    required this.count,
    required this.dotColor,
    this.direction = Axis.horizontal,
    this.spacing = 8.0,
    this.radius = 32.0,
    this.dotWidth = 8.0,
    this.dotHeight = 8.0,
    this.activeDotColor = Colors.white,
  });

  final PageController pageController;
  final int count;
  final Axis direction;
  final double spacing;
  final double radius;
  final double dotWidth;
  final double dotHeight;
  final Color dotColor;
  final Color activeDotColor;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: count,
      axisDirection: direction,
      effect: WormEffect(
          spacing:  spacing,
          radius:  radius,
          dotWidth:  dotWidth,
          dotHeight:  dotHeight,
          paintStyle:  PaintingStyle.fill,
          dotColor:  dotColor,
          activeDotColor: activeDotColor
      ),
    );
  }
}