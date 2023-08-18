import 'package:finance_project1/widget/logo.dart';
import 'package:finance_project1/widget/style.dart';
import 'package:flutter/material.dart';

class BuildPage extends StatefulWidget {
  const BuildPage(
      {super.key,
      required this.circleLogo,
      required this.style,
     });
  final CircleLogo circleLogo;
  final Style style;
  
  @override
  State<BuildPage> createState() => _BuildPageState();
}

class _BuildPageState extends State<BuildPage> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [widget.circleLogo,const SizedBox(height: 150,),widget.style],
      ),
    );
  }
}

