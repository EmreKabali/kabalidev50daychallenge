import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kabalidev50daychallenge/Core/Constants/SpecialColors.dart';

class CardList extends StatefulWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  int _currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  List<String> itemList = [
    "https://www.dolutarafi.com/wp-content/uploads/2021/09/How-to-learn-remotely-1024x576.jpg",
    "https://www.dolutarafi.com/wp-content/uploads/2021/09/Geribildirim-Feedback-Aliskanligi-1024x576.jpg",
    "https://www.dolutarafi.com/wp-content/uploads/2021/09/How-should-i-study-to-improve-my-english-1-1024x576.jpg",
    "https://www.dolutarafi.com/wp-content/uploads/2021/09/Bomba-1-1024x576.jpg",
    "https://www.dolutarafi.com/wp-content/uploads/2021/08/If-money-wasnt-an-issue.-What-dould-you-chose-to-do-1024x576.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '@kabalidev',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.5,
                  width: size.width * 0.6,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: PageView(
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    controller: _controller,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 4,
                        child: Container(
                          height: size.height * 0.5,
                          width: size.width * 0.6,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                    decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(itemList[0]),
                                      fit: BoxFit.cover),
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                )),
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  Text(
                                    "Product A",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text('Add'),
                                    color: SpecialColors.blue,
                                    textColor: Colors.white,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )
                                ],
                              ))
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 4,
                        child: Container(
                          height: size.height * 0.5,
                          width: size.width * 0.6,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                    decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(itemList[1]),
                                      fit: BoxFit.cover),
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                )),
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  Text(
                                    "Product B",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text('Add'),
                                    color: SpecialColors.blue,
                                    textColor: Colors.white,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )
                                ],
                              ))
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 4,
                        child: Container(
                          height: size.height * 0.5,
                          width: size.width * 0.6,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                    decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(itemList[2]),
                                      fit: BoxFit.cover),
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                )),
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  Text(
                                    "Product C",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text('Add'),
                                    color: SpecialColors.blue,
                                    textColor: Colors.white,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )
                                ],
                              ))
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 4,
                        child: Container(
                          height: size.height * 0.5,
                          width: size.width * 0.6,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                    decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(itemList[3]),
                                      fit: BoxFit.cover),
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                )),
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  Text(
                                    "Product D",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text('Add'),
                                    color: SpecialColors.blue,
                                    textColor: Colors.white,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )
                                ],
                              ))
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 4,
                        child: Container(
                          height: size.height * 0.5,
                          width: size.width * 0.6,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                    decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(itemList[4]),
                                      fit: BoxFit.cover),
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                )),
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  Text(
                                    "Product E",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text('Add'),
                                    color: SpecialColors.blue,
                                    textColor: Colors.white,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )
                                ],
                              ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 125, right: 8),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: _buildInd(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _indicator(bool isActive) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        height: 6,
        width: isActive ? 50 : 10,
        decoration: BoxDecoration(
            color: isActive ? Colors.black : Colors.grey,
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }

  List<Widget> _buildInd() {
    List<Widget> containers = [];
    for (int i = 0; i < 5; i++) {
      if (_currentIndex == i) {
        containers.add(_indicator(true));
      } else {
        containers.add(_indicator(false));
      }
    }
    return containers;
  }
}
