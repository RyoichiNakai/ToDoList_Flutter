import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/widgets/top_appbar.dart';
import 'package:todolist/widgets/floating_button.dart';

class MyToDoListScreen extends StatefulWidget {
  MyToDoListScreen({Key key}) : super(key: key);

  @override
  _MyToDoListScreenState createState() => _MyToDoListScreenState();
}

class _MyToDoListScreenState extends State<MyToDoListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          floatingActionButton: MyFloatingButton.buildFloatingButton(context),
          body: ListView.builder(
              itemBuilder: (BuildContext context, int index){
                return _buildListView();
              }
          )
      )

    );
  }

  Widget _buildListView() {
    return ListTile(
      //todo:implement todolist
    );
  }
}