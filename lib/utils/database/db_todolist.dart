import 'package:todolist/utils/database/db_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todolist/utils/model/todolist_model.dart';

class DbProvider extends DatabaseProvider {
  @override
  String get databaseName => 'todolist.db';

  @override
  createDBTable(Database database, int version, String tableName) => db.execute(
      """
          CREATE TABLE $tableName(
            "key" INTEGER PRIMARY KEY AUTOINCREMENT,
            "title" TEXT,
            "datetime" TEXT
          )
      """,
  );

  Future<void> insertList(ToDoListModel model, String tableName) async{
    await db.insert(
      tableName,
      model.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }


  Future<List<Map<String, dynamic>>> getList(String tableName) async{
    final List<Map<String, dynamic>> maps
    = await db.query(tableName, orderBy: "key");
    return maps;
  }

  Future<void> removeList(ToDoListModel model, String tableName) async{
    //todo:implement
  }

  Future<void> updateList(ToDoListModel model, String tableName) async{
    //todo:implement
  }
}
