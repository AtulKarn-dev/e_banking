import 'package:finance_project1/skip_1.dart';
import 'package:finance_project1/skip_6.dart';
import 'package:finance_project1/widget/logo.dart';
import 'package:finance_project1/widget/build_page.dart';
import 'package:finance_project1/widget/style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:isLastPage?AppBar(): AppBar(actions: [
          TextButton(
              onPressed: () => controller.jumpToPage(5),
              child: const Text(
                'Skip',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 22),
              ))
        ]),
        body: Container(
          padding: const EdgeInsets.only(bottom: 40),
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                 isLastPage = index == 5;
              });
            },
            children: const [
              Skip1(),
              BuildPage(
                circleLogo: CircleLogo(title: 'वित्तीय पहुँचता'),
                style: Style(
                  title:
                      'Use learning materials \nfor enhancing your \nFinancial Literacy',
                ),
              ),
              BuildPage(
                circleLogo: CircleLogo(title: 'वित्तीय सरलता'),
                style: Style(
                    title: 'Open or sell all acount \nby using single \nKYC'),
              ),
              BuildPage(
                circleLogo: CircleLogo(title: 'वित्तीय स्वतन्त्रता'),
                style: Style(
                    title:
                        'Start Video KYC \nto avodi obstacles to visiting the Bank'),
              ),
              BuildPage(
                circleLogo: CircleLogo(title: 'वित्तीय जागरुकता'),
                style: Style(
                  title: 'Start Earning \nwith hassle-free journey',
                ),
              ),
              Skip6(),
            ],
          ),
        ),
        bottomSheet: SizedBox(
          height: 40,
          child: Center(
              child: SmoothPageIndicator(
            controller: controller,
            count: 6,
            effect: const ColorTransitionEffect(
                activeDotColor: Color.fromARGB(255, 1, 173, 138)),
          )),
        ),
      ),
    );
  }
}
