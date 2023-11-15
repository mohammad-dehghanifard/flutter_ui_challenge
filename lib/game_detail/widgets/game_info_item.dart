import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class GameInfoItem extends StatelessWidget {
  const GameInfoItem({
    super.key, required this.icon, required this.subtext,
  });

  final IconData icon;
  final String subtext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(CupertinoIcons.star,color: Color(0xFFF88A42),size: 20,),
          const SizedBox(height: 4),
          Text("4.2",style: GoogleFonts.alata(color: CupertinoColors.black,fontWeight: FontWeight.w700,fontSize: 12),)
        ],
      ),
    );
  }
}