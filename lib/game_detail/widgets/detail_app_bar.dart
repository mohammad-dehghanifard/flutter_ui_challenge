import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailAppBar extends StatelessWidget implements PreferredSize {
  const DetailAppBar({
    super.key, required this.title, required this.leading,
  });

  final String title;
  final Widget leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
            title,
            style: GoogleFonts.alata(color: CupertinoColors.black,fontWeight: FontWeight.w700)),
        centerTitle: true,
        leading: leading
    );
  }

  @override
  Widget get child => Container();

  @override
  Size get preferredSize => const Size.fromHeight(64);
}

