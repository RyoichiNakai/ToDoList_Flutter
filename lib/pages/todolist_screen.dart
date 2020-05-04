import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/widgets/bottom_appbar.dart';
import 'package:todolist/widgets/floating_button.dart';
import 'package:todolist/utils/app.dart';

class MyToDoListScreen extends StatefulWidget {
  MyToDoListScreen({Key key}) : super(key: key);

  @override
  _MyToDoListScreenState createState() => _MyToDoListScreenState();
}


class _MyToDoListScreenState extends State<MyToDoListScreen> {
  bool doneFlag = false;

  @override
  Widget build(BuildContext context) {
    //toDO:mapにして値を保存する SQLite使う？？

    return SafeArea(
      child: DefaultTabController(
          //todo:タブのリスト作ったらここも変更
          length: AppInfo.stringList.length,
          child: Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            resizeToAvoidBottomInset: true,
            appBar: MyBottomAppBar.buildBottomAppBar(context),
            floatingActionButton: MyFloatingButton.buildFloatingButton(context),
            body: ListView.builder(
                itemCount: AppInfo.stringList.length,
                itemBuilder: (BuildContext context, int index){
                return _buildListItem(context, AppInfo.stringList[index]);
                }
            ),
          ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, String title) {
    return Card(
      child: ListTile(
        leading: IconButton(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
            icon: Icon(
              !doneFlag ? Icons.check_box_outline_blank : Icons.check_box,
              color: Colors.greenAccent,
            ),
            onPressed: () {
              setState(() {
                doneFlag = true;
              });
            }
        ),
        title: Text(title, style: TextStyle(color: Colors.black),
        ),
        onTap: null,
      ),
      //todo:implement todolist
    );
  }
}