import 'package:finance_project1/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const OnBoardPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const SizedBox(
            height: 150,
          ),
          SvgPicture.asset(
            'assets/images/alternate.svg',
            height: 100,
            colorFilter: const ColorFilter.mode(
                Color.fromARGB(255, 1, 173, 138), BlendMode.difference),
          ),
          const SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            'assets/images/Bibaabo.svg',
            width: 250,
          ),
          const Spacer(),
          const Text(
            'A Revolutionary Financial Product Selling Platform',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.w800),
          ),
          const Spacer(),
        ],
      ),
    ));
  }
}

