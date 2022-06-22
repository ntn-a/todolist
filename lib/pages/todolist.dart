import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class TodoList   extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TodoList"),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Insert input box here."),
            ElevatedButton(onPressed: (){}, child: const Text("Submit")),
          ],
        ),
      ),
    );
  }
}