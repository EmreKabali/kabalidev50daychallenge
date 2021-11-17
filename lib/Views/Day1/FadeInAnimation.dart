import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:kabalidev50daychallenge/Core/Constants/SpecialColors.dart';

class FadeInAnimation extends StatefulWidget {
  const FadeInAnimation({Key? key}) : super(key: key);

  @override
  _FadeInAnimationState createState() => _FadeInAnimationState();
}

class _FadeInAnimationState extends State<FadeInAnimation> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: SpecialColors.whiteLight,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: FadeInUp(
                duration: Duration(milliseconds: 1000),
                delay: Duration(milliseconds: 1000),
                child: Image.network(
                    "https://cdn.dribbble.com/users/3484830/screenshots/16787618/media/b134e73ef667b926c76d8ce3f962dba2.gif"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: FadeInUp(
                duration: Duration(milliseconds: 1000),
                delay: Duration(milliseconds: 1000),
                child: Container(
                  width: deviceSize.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInUp(
                          duration: Duration(milliseconds: 1000),
                          delay: Duration(milliseconds: 1000),
                          child: Text(
                            'Hoşgeldin, kabalidev',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        FadeInUp(
                          duration: Duration(milliseconds: 1000),
                          delay: Duration(milliseconds: 1000),
                          child: Text(
                            'Ofis kaydı oluşturmak için devam edin.',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 35),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: FadeInUp(
                            duration: Duration(milliseconds: 1000),
                            delay: Duration(milliseconds: 1000),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MaterialButton(
                                  onPressed: () {},
                                  child: Text('Başla'),
                                  color: SpecialColors.blue,
                                  textColor: Colors.white,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Skip',
                                      style: TextStyle(color: Colors.blue),
                                    ))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
