import 'package:flutter/material.dart';

class TopTabBar extends StatefulWidget {
  TopTabBar({Key key}) : super(key: key);

  @override
  _TopTabBarState createState() => _TopTabBarState();
}

class _TopTabBarState extends State<TopTabBar>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, initialIndex: 1, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
        ),
        Expanded(
            flex: 8,
            child: Container(
              // width: 240,
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: TabBar(
                controller: _controller,
                indicatorColor: Colors.white,
                labelStyle: TextStyle(color: Colors.white, fontSize: 22),
                unselectedLabelStyle:
                    TextStyle(color: Colors.grey[200], fontSize: 18),
                tabs: <Widget>[
                  Text('关注'),
                  Text('推荐'),
                ],
              ),
            )),
        Expanded(
          flex: 2,
          child: Icon(
            Icons.live_tv,
            size: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
