import 'package:finance_project1/widget/style.dart';
import 'package:flutter/material.dart';
import 'widget/logo.dart';
class Skip1 extends StatelessWidget {
  const Skip1({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         CircleLogo(title: 'वित्तीय साक्षरता',fontWeight: FontWeight.bold,),
            SizedBox(
              height: 20,
            ),
           Style(title: 'Start Earning with',height: .8,),
            SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '0',
                  style: TextStyle(
                      fontSize: 200, fontWeight: FontWeight.w900, height: .9),
                ),
                Text(
                  'Investment',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                )
              ],
            ),
          ],
        ),
      );
    
  }
}

