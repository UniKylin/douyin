import 'package:douyin/BottomTabBar.dart';
import 'package:douyin/CommentText.dart';
import 'package:douyin/TopTabBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '抖音',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.amberAccent),
          child: HomePage(),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 100,
            color: Colors.blueAccent,
            child: BottomTabBar(),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          height: 100,
          width: screenWidth,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: TopTabBar(),
          ),
        ),
        Positioned(
          bottom: 0,
          width: 0.7 * screenWidth,
          height: 150,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
            child: CommentText(),
          ),
        ),
        Positioned(
          right: 0,
          top: 0.4 * screenHeight,
          width: 0.2 * screenWidth,
          height: 0.3 * screenHeight,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          height: .25 * screenWidth,
          width: .25 * screenWidth,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
          ),
        )
      ],
    );
  }
}
