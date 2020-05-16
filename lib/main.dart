import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todolist/pages/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeDataLight,
      darkTheme: themeDataDark,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ja', 'JP'),
      ],
      home: MyHomeScreen(),
      //TODO:root
    );
  }

  //todo:色がいい感じになる様にする、名前とかももう一回再確認
  //todo:try to change themecolor
  final themeDataLight = ThemeData.light().copyWith(
    primaryColorLight: Colors.blue,
    backgroundColor: Colors.blue[700],
    buttonColor: Colors.white,
    accentColor: Colors.blue, //ボタンの中のアイコンの色
    textSelectionColor: Colors.white, //タブバーの文字の色
    canvasColor: Colors.black, //カードの中の文字
  );

  final themeDataDark = ThemeData.dark().copyWith(
    primaryColorDark: Colors.black,
    backgroundColor: Colors.grey[800],
    buttonColor: Colors.white,
    accentColor: Colors.white, //ボタンの中のアイコンの色
    textSelectionColor: Colors.white, //タブバーの文字の色
    canvasColor: Colors.white, //カードの中の文字
  );



}
