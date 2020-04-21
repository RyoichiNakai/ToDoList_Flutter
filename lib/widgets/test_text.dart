import 'package:flutter/material.dart';

class MyHomeText extends StatefulWidget {
  MyHomeText({Key key}) : super(key: key);

  @override
  _MyHomeTextState createState() => _MyHomeTextState();
}

class _MyHomeTextState extends State<MyHomeText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('aho')
      )
    );
  }
}