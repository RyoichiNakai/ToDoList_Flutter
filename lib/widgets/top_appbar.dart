import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/utils/app.dart';

class MyTopAppBar {
  static const _appBarIconSize = 25.0;

  //TODO場所を移動するかも
  static void _onPressedEdit(){
    //TODO: _onPressedEdit()
  }

  static void _onPressedTag(){
    //TODO: _onPressedTag()
  }

  static void _onPressedFolder(){
    //TODO: _onPressedFolder()
  }

  static void _onPressedGear(){
    //TODO: _onPressedGear()
  }

  static Widget buildCupertinoNavigationBar(BuildContext context){
    //TODO:ここが重なるのをどうにかする
    return  CupertinoNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          middle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildCupertinoNavigationBarLeading(context),
              Expanded(
                child: Center(child: Text('TODOリスト', style: TextStyle(color: Colors.white)) )
              ),
              _buildCupertinoNavigationBarTrailing(context)
            ],
          ),
    );
  }

  static Widget _buildCupertinoNavigationBarLeading(BuildContext context){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CupertinoButton(
          padding: const EdgeInsets.all(5),
          child: Text('編集', style: TextStyle(color: Colors.white)),
          onPressed: _onPressedEdit,
          pressedOpacity: 0.5,
        ),
        CupertinoButton(
          padding: const EdgeInsets.all(5),
          child: Icon(
              CupertinoIcons.tag,
              color: Theme.of(context).buttonColor,
              size: _appBarIconSize
          ),
          onPressed: _onPressedTag,
          pressedOpacity: 0.5,
        )
      ],
    );
  }

  static Widget _buildCupertinoNavigationBarTrailing(BuildContext context){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        CupertinoButton(
          padding: const EdgeInsets.all(5),
          child: Icon(
            CupertinoIcons.folder,
            color: Theme.of(context).buttonColor,
            size: _appBarIconSize,
          ),
          onPressed: _onPressedFolder,
          pressedOpacity: 0.5,
        ),
        CupertinoButton(
          padding: const EdgeInsets.all(5),
          child: Icon(
              CupertinoIcons.gear,
              color: Theme.of(context).buttonColor,
              size: _appBarIconSize + 5.0
          ),
          onPressed: _onPressedGear,
          pressedOpacity: 0.5,
        ),
      ],
    );
  }
}