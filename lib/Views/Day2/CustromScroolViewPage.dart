import 'package:flutter/material.dart';
import 'package:kabalidev50daychallenge/Core/Constants/SpecialColors.dart';

class CustomScroolViewPage extends StatefulWidget {
  const CustomScroolViewPage({Key? key}) : super(key: key);

  @override
  _CustomScroolViewPageState createState() => _CustomScroolViewPageState();
}

class _CustomScroolViewPageState extends State<CustomScroolViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SpecialColors.whiteLight,
      appBar: AppBar(
        title: Text(
          'KabaliDEV',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.blue,
        ),
        backgroundColor: SpecialColors.whiteLight,
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.blue,
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://www.dolutarafi.com/wp-content/uploads/2021/11/091121-1024x576.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((_, int index) {
            return ListTile(
              leading: Card(
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product:${index}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Column(
                    children: [Text('Price:'), Text('10 TL')],
                  )
                ],
              ),
            );
          }))
        ],
      ),
    );
  }
}
