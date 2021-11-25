import 'package:flutter/material.dart';
import 'package:kabalidev50daychallenge/Views/Day2/CustromScroolViewPage.dart';
import 'package:kabalidev50daychallenge/Views/Day3/Steps.dart';
import 'package:kabalidev50daychallenge/Views/Day4/CardList.dart';

import 'Views/Day1/FadeInAnimation.dart';

void main() {
  runApp(Challenge50());
}

class Challenge50 extends StatelessWidget {
  const Challenge50({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardList(),
    );
  }
}
