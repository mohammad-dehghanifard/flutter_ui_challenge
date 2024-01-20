import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/doctor_app/helper/doctor_category.dart';

class DoctorCategoryItem extends StatelessWidget {
  const DoctorCategoryItem({
    super.key,
    required this.category,
  });

  final DoctorCategory category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 12),
          width: 80,
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                  colors: category.colors
              )
          ),
          child: Center(child: Image.asset(category.iconPath,scale: 1.2)),
        ),
      ],
    );
  }
}
