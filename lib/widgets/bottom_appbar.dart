import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/utils/app.dart';

class MyBottomAppBar {
  static Widget buildBottomAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize:
          Size.fromHeight(AppInfo.getMediaQuerySizeHeight(context) / 20),
      child: Material(
        color: Theme.of(context).backgroundColor,
        child: TabBar(
          // タブのオプション
          //todo:バックグラウンドカラーとうの変更
            isScrollable: true,
            unselectedLabelColor: Colors.blue.withOpacity(0.3),
            unselectedLabelStyle: TextStyle(fontSize: 12.0),
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 16.0),
            indicatorColor: Colors.red,
            indicatorWeight: 2.0,
            // タブに表示する内容
            tabs: AppInfo.getTabList(AppInfo.stringList, AppInfo.stringList.length)
        ),
      ),
    );
  }
}
