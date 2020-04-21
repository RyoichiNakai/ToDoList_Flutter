import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/pages/todolist_screen.dart';

class MyBottomNavigationBar extends StatefulWidget {
  MyBottomNavigationBar({Key key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context){
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            //TODO:chande icons
            icon: Icon(CupertinoIcons.home),
            title: Text('TODOリスト'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            title: Text('予算管理'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            title: Text('支出管理'),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        assert(index >= 0 && index < 3);
        switch (index) {
          case 0:
            return MyToDoListScreen();
            break;
          case 1:
            return Container(color: Colors.yellow);
            break;
          case 2:
            return Container(color: Colors.green);
            break;
        }
        return null;
      },
    );
  }
}