// Nhan Nguyen
// June 23, 2022
import 'package:sqflite/sqflite.dart';
import 'package:todolist/card/todo.dart';

class Db{
  late Database database;
  Db(){
    _openDb();
  }
  void _openDb() async{
    final dbPath = await getDatabasesPath();
    String path = "$dbPath/database.db";
    database = await openDatabase(path, version: 1, onCreate: (Database db, int version) async{
      await db.execute('CREATE TABLE Todo (todo TEXT)');
    });
  }
  void addEntry(Todo t) async{
    
  }
}