// import 'package:finance_project1/onboarding_page.dart';
// import 'package:finance_project1/skip_2.dart';
// import 'package:finance_project1/skip_3.dart';
// import 'package:finance_project1/skip_4.dart';
// import 'package:finance_project1/skip_5.dart';
// import 'package:finance_project1/skip_6.dart';
   import 'package:finance_project1/my_homepage.dart';
// import 'package:finance_project1/sign_up_page.dart';
//  import 'package:finance_project1/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
        home: const MyHomePage(),
          // home: const SplashScreen(),
        // home: const OnBoardPage(),
      //  home: const Skip3(),
      // home: const SignUp(),

    );
  }
}


