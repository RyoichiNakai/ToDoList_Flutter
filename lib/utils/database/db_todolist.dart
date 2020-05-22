import 'package:todolist/utils/database/db_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todolist/utils/model/todolist_model.dart';

class DbProvider extends DatabaseProvider {
  @override
  String get databaseName => 'todolist.db';

  @override
  createDBTable(Database db, int version, String tableName) => db.execute(
    """
          CREATE TABLE $tableName(
            "key" INTEGER PRIMARY KEY AUTOINCREMENT,
            "title" TEXT,
            "datetime" TEXT
          )
    """,
  );

  //挿入
  Future<void> insertList(ToDoListModel model, String tableName) async{
    await db.insert(
      tableName,
      model.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  //削除
  Future<void> deleteList(int key, String tableName) async{
    await db.delete(
        tableName,
        where: 'key = ?',
        whereArgs: [key]
    );
  }

  //更新
  Future<void> updateList(ToDoListModel model, String tableName) async{
    await db.update(
      tableName,
      model.toMap(),
      where: 'key = ?',
      whereArgs: [model.key],
      conflictAlgorithm: ConflictAlgorithm.fail,
    );
  }

  //取得
  Future<List<Map<String, dynamic>>> getList(String tableName) async{
    final List<Map<String, dynamic>> maps
    = await db.query(tableName, orderBy: "key");
    return maps;
  }

  //検索
  Future<List<Map<String, dynamic>>> exploreTitle(String name, String tableName) async{
    final List<Map<String, dynamic>> maps
    = await db.query(tableName, where:"title = ?", whereArgs:[name]);
    return maps;
  }
}
