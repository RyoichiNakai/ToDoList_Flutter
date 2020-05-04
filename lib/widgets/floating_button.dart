import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyFloatingButton{
  static void _addListTile(){
    //todo:addListTile
  }

  static Widget buildFloatingButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: _addListTile,
      backgroundColor: Theme.of(context).buttonColor,
      child: Icon(CupertinoIcons.pencil, color: Theme.of(context).primaryColor),
    );
  }
}