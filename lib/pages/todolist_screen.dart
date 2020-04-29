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

  @override
  Widget build(BuildContext context) {
    //toDO:mapにして値を保存する SQLite使う？？

    return SafeArea(
      child: DefaultTabController(
          //todo:タブのリスト作ったらここも変更
          length: AppInfo.stringList.length,
          child: Scaffold(
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
        title: Text(title, style: TextStyle(color: Theme.of(context).textSelectionColor),
        ),
        onTap: null,
      ),
      //todo:implement todolist
    );
  }
}