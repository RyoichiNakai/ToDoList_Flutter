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
      theme: themeData,
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

  final themeData = ThemeData(
    primarySwatch: Colors.blue,
    buttonColor: Colors.white,
    backgroundColor: Colors.blue,
    textSelectionColor: Colors.black,
  );


}
