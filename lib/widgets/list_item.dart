import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListItems{
  static bool doneFlag = false;

  static Widget buildListItem(BuildContext context, String title, String dateTime,
      String key, {Function function}) {
    return Card(
      //todo:長く押したら周りが黒くなるのなんで
      key: Key(key),
      child: ListTile(
        leading: IconButton(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          icon: Icon(
            !doneFlag ? Icons.check_box_outline_blank : Icons.check_box,
            color: Colors.greenAccent,
          ),
          onPressed: null,
        ),
        title: Text(title),
        subtitle: Text(dateTime),
        onTap: () {},
      ),
    );
  }
}