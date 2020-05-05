import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/widgets/bottom_appbar.dart';
import 'package:todolist/widgets/floating_button.dart';
import 'package:todolist/utils/app.dart';
import 'package:todolist/utils/model/model.dart';
import 'package:reorderables/reorderables.dart';

class MyToDoListScreen extends StatefulWidget {
  MyToDoListScreen({Key key}) : super(key: key);

  @override
  _MyToDoListScreenState createState() => _MyToDoListScreenState();
}


class _MyToDoListScreenState extends State<MyToDoListScreen> {
  List<Model> modelList = new List();
  Model model;
  bool doneFlag = false;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < AppInfo.titleList.length; i++) {
      model = new Model(
          title: AppInfo.titleList[i],
          dateTime: AppInfo.subTitleList[i],
          key: i.toString(),
      );
      modelList.add(model);
    }
    //todo:implement
  }

  void _onReorder (int oldIndex, int newIndex){
    if(oldIndex < newIndex){
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
            body: ReorderableListView(
                padding: EdgeInsets.all(10.0),
                onReorder: (oldIndex, newIndex) => _onReorder(oldIndex, newIndex),
                children: modelList.map((model) => _buildListItem(context, model.title, model.dateTime)).toList(),
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

  Widget _buildListItem(BuildContext context, String title, String dateTime) {
    return Card(
      key: Key(model.key),
      child: ListTile(
        leading: IconButton(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            icon: Icon(
              !doneFlag ? Icons.check_box_outline_blank : Icons.check_box,
              color: Colors.greenAccent,
            ),
            onPressed: () {
              setState(() {
                //todo:終了した時の処理
                doneFlag = true;
              });
            }
        ),
        title: Text(title, style: TextStyle(color: Colors.black)),
        subtitle: Text(dateTime),
        onTap:(){},
      ),
    );
  }
}