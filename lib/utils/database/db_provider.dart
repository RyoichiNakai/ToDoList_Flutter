import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'dart:io';

//コマンド一覧
// /data/data/com.expample.flutterapp/databases/
// run-as com.example.flutterapp cat databases/RendaMachine_10.db > /sdcard/mode_10.db
// adb pull /sdcard/mode_10.db /Users/ryoichinakai/WorkSpace

/// データベース毎にこのクラスを継承したProviderを実装する
abstract class DatabaseProvider {
  Database db;
  String get databaseName;
  String get tableName;
  createDBTable(Database database, int version);

  void init() async {
    print('1');
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentDirectory.path, databaseName);
    //deleteDatabase(path);
    // openDatabaseメソッドを使用することでDBインスタンスを取得することができます。
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database database, int version) => createDBTable,
    );
  }
}