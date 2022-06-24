// Nhan Nguyen
// June 23, 2022
import 'package:sqflite/sqflite.dart';
import 'package:todolist/card/todo.dart';

class Db {
  late Database database;
  Db() {
    _openDb();
  }

  void _openDb() async {
    final dbPath = await getDatabasesPath();
    String path = "$dbPath/database.db";
    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('CREATE TABLE tab(todo TEXT)');
    });
  }

  void addEntry(String text) async {
    await database.transaction((txn) async {
      int id1 = await txn.rawInsert('INSERT INTO tab(todo) VALUES (\'$text\')');
      print(id1);
    });
  }

  void deleteDb() async {
    final dbPath = await getDatabasesPath();
    String path = "$dbPath/database.db";
    try {
      await deleteDatabase(path);
    } catch (e) {}
  }

  Future<void> getData(List<Map> m) async {
    m = await database.rawQuery('SELECT * FROM tab');
    print(m);
  }
}
