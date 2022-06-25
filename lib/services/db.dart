// Nhan Nguyen
// June 23, 2022
import 'package:sqflite/sqflite.dart';

class Db {
  late Database database;

  /// Private function that will open the database.
  /// Finds the local path for the database and
  /// initializes it.
  void openDb() async {
    final dbPath = await getDatabasesPath();
    String path = "$dbPath/database.db";
    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('CREATE TABLE tab(todo TEXT)');
    });
  }

  /// Takes a string parameter and inserts into the
  /// database.
  void addEntry(String text) async {
    openDb();
    await database.transaction((txn) async {
      await txn.rawInsert('INSERT INTO tab(todo) VALUES (\'$text\')');
    });
  }

  /// Clears the entire database.
  void deleteDb() async {
    openDb();
    final dbPath = await getDatabasesPath();
    String path = "$dbPath/database.db";
    try {
      await deleteDatabase(path);
      openDb();
    } catch (e) {
      throw Error(); // Not a real error, placeholder
    }
  }

  /// Queries the database and stores
  /// data inside a map.
  Future<void> getData(List<Map> m) async {
    openDb();
    try {
      m = await database.rawQuery('SELECT * FROM tab');
    } catch (e) {
      throw Error();
    }
  }
}
