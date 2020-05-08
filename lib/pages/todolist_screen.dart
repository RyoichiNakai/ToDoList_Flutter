import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/widgets/bottom_appbar.dart';
import 'package:todolist/widgets/floating_button.dart';
import 'package:todolist/utils/app.dart';
import 'package:todolist/utils/model/todolist_model.dart';
import 'package:reorderables/reorderables.dart';
import 'package:todolist/widgets/list_item.dart';

class MyToDoListScreen extends StatefulWidget {
  MyToDoListScreen({Key key}) : super(key: key);

  @override
  _MyToDoListScreenState createState() => _MyToDoListScreenState();
}

class _MyToDoListScreenState extends State<MyToDoListScreen> {
  List<ToDoListModel> modelList;

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
              children: modelList.map((ToDoListModel model)
              => ListItems.buildListItem(context, model.title, model.dateTime, model.key.toString())).toList(),
            ),
          ),
/*            ListView.builder(
                itemCount: AppInfo.stringList.length,
                itemBuilder: (BuildContext context, int index){
                return _buildListItem(context, AppInfo.stringList[index]);
                }
            ),*/
        ),
      ),
    );
  }


}
