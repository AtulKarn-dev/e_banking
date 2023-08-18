


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style extends StatelessWidget {
  final String title;
  final double? height;
  const Style({super.key, required this.title, this.height});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(fontSize: 22,height: height, fontWeight: FontWeight.bold),
    );
  }
}

