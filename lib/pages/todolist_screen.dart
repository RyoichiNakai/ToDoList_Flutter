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
    //toDO:mapにして値を保存する SQLite使う？？
    var stringList = ["nakai", "onakaita", "kaguyasamaha", "kokurasetai"];
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          floatingActionButton: MyFloatingButton.buildFloatingButton(context),
          body: ListView.builder(
                  itemCount: stringList.length,
                  itemBuilder: (BuildContext context, int index){
                    return _buildListItem(context, stringList[index]);
                }
          ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, String title) {
    return Card(

      child: ListTile(
        title: Text(title, style: TextStyle(color: Theme.of(context).textSelectionColor),
        ),
        onTap: null,
      ),
      //todo:implement todolist

    );
  }
}