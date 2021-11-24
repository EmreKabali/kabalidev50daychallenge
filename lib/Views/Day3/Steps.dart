import 'package:flutter/material.dart';

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);

  @override
  _StepsState createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  int _currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 8, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome my store',
                      style: TextStyle(fontSize: 25, color: Colors.grey[500]),
                    ),
                    Text(
                      'KabaliDEV Collection',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: _buildInd(),
                    ),
                  )
                ],
              ),
              Container(
                height: size.height * 0.7,
                width: size.width,
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  controller: _controller,
                  children: [
                    Image.network(
                        "https://www.dolutarafi.com/wp-content/uploads/2021/09/How-to-learn-remotely-1024x576.jpg"),
                    Image.network(
                        "https://www.dolutarafi.com/wp-content/uploads/2021/09/Geribildirim-Feedback-Aliskanligi-1024x576.jpg"),
                    Image.network(
                        "https://www.dolutarafi.com/wp-content/uploads/2021/09/How-should-i-study-to-improve-my-english-1-1024x576.jpg"),
                    Image.network(
                        "https://www.dolutarafi.com/wp-content/uploads/2021/09/Bomba-1-1024x576.jpg"),
                    Image.network(
                        "https://www.dolutarafi.com/wp-content/uploads/2021/08/If-money-wasnt-an-issue.-What-dould-you-chose-to-do-1024x576.jpg")
                  ],
                ),
              )
            ],
          ),
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
