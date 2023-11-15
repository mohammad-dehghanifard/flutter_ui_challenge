import 'package:flutter/cupertino.dart';

class FavoriteBtn extends StatelessWidget {
  const FavoriteBtn({
    super.key, required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [
                  Color(0xFFF3A470),
                  Color(0xFFF88A42),
                ]
            )
        ),
        child: const Center(child: Icon(CupertinoIcons.suit_heart_fill,color: CupertinoColors.white,size: 32,)),
      ),
    );
  }
}