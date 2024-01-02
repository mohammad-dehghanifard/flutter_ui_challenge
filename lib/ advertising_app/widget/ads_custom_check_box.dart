import 'package:flutter/material.dart';

class AdsCustomCheckBox extends StatelessWidget {
  const AdsCustomCheckBox({
    super.key, required this.isActive,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          color:  isActive? const Color(0xFF00685E) :Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(4)
      ),
      child: isActive? const Center(child: Icon(Icons.check,size: 16,color: Colors.white)) : null,
    );
  }
}