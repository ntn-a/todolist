import 'package:sqflite/sqflite.dart';

class Database{
  void createDb() async{
    var db = await openDatabase('test.db');
  }
  void addWord() async{
    
  }
}