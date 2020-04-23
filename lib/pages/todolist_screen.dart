import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/widgets/top_appbar.dart';

class MyToDoListScreen extends StatefulWidget {
  MyToDoListScreen({Key key}) : super(key: key);

  @override
  _MyToDoListScreenState createState() => _MyToDoListScreenState();
}

class _MyToDoListScreenState extends State<MyToDoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: MyAppBar.buildAppBar(context),
        body: Center(
          child: Text('aho'),
        )
    );
  }
}