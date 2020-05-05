import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/utils/app.dart';

class MyFloatingButton{
  static void _addListTile(){
    //todo:addListTile
  }

  static Widget buildFloatingButton(BuildContext context) {
    return FloatingActionButton(
      elevation: AppInfo.elevation,
      onPressed: _addListTile,
      backgroundColor: Theme.of(context).buttonColor,
      child: Icon(CupertinoIcons.pencil, color: Theme.of(context).primaryColor),
    );
  }
}