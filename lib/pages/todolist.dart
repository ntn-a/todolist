// Nhan Nguyen
// June 21, 2022
import 'package:flutter/material.dart';
import 'package:todolist/services/db.dart';
import 'package:todolist/card/todo.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> todo = [];
  List<Map> list = [];
  Db db = Db();
  // List of Todo objects, so what'll happen is that
  // As data is stored in the database, these cards can
  // be generated from the Widget and can be displayed.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TodoList"),
        backgroundColor: Colors.black87,
      ),
      body: RefreshIndicator(
        onRefresh: () => db.getData(list),
        child: Center(
          child: ListView(
            children: [
              ElevatedButton(
                onPressed: () {
                  db.deleteDb();
                },
                child: const Text("Delete DB"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // Redirects to add entry.
            Navigator.pushNamed(context, "/addentry");
          });
        },
        backgroundColor: Colors.black87,
        child: const Icon(Icons.add),
      ),
    );
  }
}
