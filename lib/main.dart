import 'package:flutter/material.dart';

import 'Views/Day1/FadeInAnimation.dart';

void main() {
  runApp(Challenge50());
}

class Challenge50 extends StatelessWidget {
  const Challenge50({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
    home: FadeInAnimation(),
      
    );
  }
}