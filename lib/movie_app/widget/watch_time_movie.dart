import 'package:flutter/material.dart';

class WatchTimeMovie extends StatelessWidget {
  const WatchTimeMovie({
    super.key, required this.value,
  });
  final double value;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      onChanged: (value) {},
      activeColor: Colors.white,
      inactiveColor: Colors.grey,
    );
  }
}