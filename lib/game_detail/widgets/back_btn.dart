import 'package:flutter/cupertino.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    super.key, required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: CupertinoColors.tertiaryLabel,width: 1.5)
        ),
        child: const Icon(CupertinoIcons.arrow_left,color: CupertinoColors.black,),
      ),
    );
  }
}