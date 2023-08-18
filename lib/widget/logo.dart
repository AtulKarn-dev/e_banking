import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CircleLogo extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  const CircleLogo({super.key, required this.title, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border:
                Border.all(width: 8, color: const Color.fromARGB(255, 1, 173, 138))),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.sail(fontSize: 35, height: 1,fontWeight: fontWeight),
          ),
        ));
  }
}

