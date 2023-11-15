import 'package:flutter/material.dart';

import '../data/fake_game_data.dart';

class GalleryImageItem extends StatelessWidget {
  const GalleryImageItem({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(FakeGameData.gallery[index]))
            );
          },
        );
      },
      child: Padding(
        padding:  EdgeInsets.fromLTRB(
            index ==0 ? 16 : 0,
            0,
            12,
            0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(FakeGameData.gallery[index])),
      ),
    );
  }
}