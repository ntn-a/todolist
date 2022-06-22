import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todolist/card/todo.dart';

class TodoList   extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> todo = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TodoList"),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: ListView(
          children: todo,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            Navigator.pushNamed(context, "/addentry");
          });
        },
        backgroundColor: Colors.black87,
        child: const Icon(Icons.add),
      ),
    );
  }
}