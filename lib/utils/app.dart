import 'package:flutter/material.dart';

class AppInfo {
  static List stringList = ["nakai", "onakaita", "kaguyasamaha", "kokurasetai"];

  static final elevation = 0.0;
  static final unselectedTabFontSize = 12.0;
  static final selectedTabFontSize = 16.0;

  static double getMediaQuerySizeHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

  static double getMediaQuerySizeWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static List<Widget> getTabList(List s, int index){
    List<Widget> tabList = [];
    for(int i = 0; i < index; i++){
      tabList.add(Tab(child: Text(s[i])));
    }
    return tabList;
  }
}