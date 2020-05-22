import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/widgets/bottom_appbar.dart';
import 'package:todolist/widgets/floating_button.dart';
import 'package:todolist/utils/app.dart';
import 'package:todolist/utils/model/todolist_model.dart';

class MyToDoListScreen extends StatefulWidget {
  MyToDoListScreen({Key key}) : super(key: key);

  @override
  _MyToDoListScreenState createState() => _MyToDoListScreenState();
}

class _MyToDoListScreenState extends State<MyToDoListScreen> {
  List<ToDoListModel> modelList;
  bool doneFlag = false;

  @override
  void initState() {
    super.initState();
    modelList = [];
    for (int i = 0; i < AppInfo.titleList.length; i++) {
      ToDoListModel model = new ToDoListModel(
        key: i,
        title: AppInfo.titleList[i],
        dateTime: AppInfo.subTitleList[i],
      );
      modelList.add(model);
    }
    //todo:implement
  }

  void _onReorder(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    setState(() {
      final model = modelList.removeAt(oldIndex);
      modelList.insert(newIndex, model);
    });
  }

  @override
  Widget build(BuildContext context) {
    //toDO:mapにして値を保存する SQLite使う？？
    return SafeArea(
      child: DefaultTabController(
        //todo:タブのリスト作ったらここも変更
        length: AppInfo.stringList.length,
        child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          appBar: MyBottomAppBar.buildBottomAppBar(context),
          floatingActionButton: MyFloatingButton.buildFloatingButton(context),
          body: Container(
            padding: EdgeInsets.all(10.0),
            child: ReorderableListView(
              onReorder: (oldIndex, newIndex) => _onReorder(oldIndex, newIndex),
              children: modelList
                  .map((ToDoListModel model) => buildListItem(context,
                      model.title, model.dateTime, model.key.toString()))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildListItem(
      BuildContext context, String title, String dateTime, String key,
      {Function function}) {
     return ListTile(
      key: Key(key),
      leading: InkWell(
        onTap: () {
          setState(() {
            !doneFlag ? doneFlag = true : doneFlag = false;
          });
        },
        child: Icon(
            !doneFlag
                ? CupertinoIcons.circle
                : CupertinoIcons.check_mark_circled_solid,
            color: Colors.blueAccent,
            size: AppInfo.checkButtonSize),
      ),
      title: Text(title),
      subtitle: Text(dateTime),
      onTap: () {},
      //todo:長く押したら周りが黒くなるのなんで
    );
  }
}
