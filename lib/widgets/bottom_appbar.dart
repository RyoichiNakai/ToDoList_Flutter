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
          //todo:バックグラウンドカラーとうの変更
            isScrollable: true,
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: AppInfo.unselectedTabFontSize),
            labelColor: Theme.of(context).primaryColor,
            labelStyle: TextStyle(fontSize: AppInfo.selectedTabFontSize),
            indicator: BoxDecoration(
              color: Colors.blueGrey[200],
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2.0
                )
              )
            ),
            //indicatorColor: Theme.of(context).primaryColor,
            //indicatorWeight: 2.0,
            // タブに表示する内容
            tabs: AppInfo.getTabList(AppInfo.stringList, AppInfo.stringList.length)

        ),
      ),
    );
  }
}
