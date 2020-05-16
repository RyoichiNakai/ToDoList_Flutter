import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/widgets/bottom_navigationbar.dart';
import 'package:todolist/widgets/top_appbar.dart';
import 'package:todolist/widgets/test_text.dart';


class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key key}) : super(key: key);
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    //print(widget.key);
    return CupertinoPageScaffold(
      //todo:繊維作のkeyでappbarを変えられるようにする
      navigationBar: MyTopAppBar.buildCupertinoNavigationBar(context),
      child : MyBottomNavigationBar(),
    );
  }
}