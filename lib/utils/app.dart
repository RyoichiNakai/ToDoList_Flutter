import 'package:flutter/material.dart';

class AppInfo {
  static List<String> stringList = ["nakai", "onakaita", "kaguyasamaha", "kokurasetai"];
  static List<String> titleList = ["Title A", "Title B", "Title C"];
  static List<String> subTitleList = ["SubTitle A", "SubTitle B", "SubTitle C"];

  static final elevation = 0.0;
  static final unselectedTabFontSize = 14.0;
  static final selectedTabFontSize = 18.0;
  static final checkButtonSize = 30.0;

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