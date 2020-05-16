import 'package:todolist/utils/database/db_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todolist/utils/model/todolist_model.dart';

class DbProvider extends DatabaseProvider {
  @override
  String get databaseName => 'todolist.db';

  @override
  String get tableName => 'todolist';

  @override
  createDBTable(Database database, int version) => db.execute(
      """
          CREATE TABLE $tableName(
            "key" INTEGER PRIMARY KEY AUTOINCREMENT,
            "title" TEXT,
            "datetime" TEXT
          )
      """,
  );

  Future<void> insertList(ToDoListModel model) async{
    await db.insert(
      tableName,
      model.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> removeList(ToDoListModel model) async{
    //todo:implement
  }

  Future<void> updateList(ToDoListModel model) async{
    //todo:implement
  }
}
