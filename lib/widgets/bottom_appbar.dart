import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/utils/app.dart';

class MyBottomAppBar {
  static Widget buildBottomAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(AppInfo.getMediaQuerySizeHeight(context) / 15),
      child: TabBar(
          //todo:バックグラウンドカラーとうの変更
          isScrollable: true,
          unselectedLabelColor: Theme.of(context).textSelectionColor,
          unselectedLabelStyle: TextStyle(fontSize: AppInfo.unselectedTabFontSize),
          labelColor: Theme.of(context).textSelectionColor,
          labelStyle: TextStyle(fontSize: AppInfo.unselectedTabFontSize),
          indicatorColor: Theme.of(context).textSelectionColor,
          indicatorWeight: 3.0,
          // タブに表示する内容
          tabs: AppInfo.getTabList(AppInfo.stringList, AppInfo.stringList.length)),
    );
  }
}
