import 'package:finance_project1/my_homepage.dart';
import 'package:finance_project1/widget/logo.dart';
import 'package:finance_project1/widget/style.dart';
import 'package:flutter/material.dart';

class Skip6 extends StatefulWidget {
  const Skip6({super.key});

  @override
  State<Skip6> createState() => _Skip6State();
}

class _Skip6State extends State<Skip6> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(bottom: 80,top: 20),
        child: Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const CircleLogo(title: 'वित्तीय सहजता'),
        const Style(title: 'Start SIP \nToday for better tomorrow'),
        SizedBox(
            height: 60,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context) =>  const MyHomePage()));
              },
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.lightBlueAccent)),
              child: const Text(
                'Start now',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            )),
      ]),
        ),
      );
  }
}


