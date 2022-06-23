// Nhan Nguyen
// June 21, 2022
import 'package:flutter/material.dart';
import 'package:todolist/services/db.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
          children: const [
            SizedBox(height: 50),
            Text("TEST"),
            // Main idea is that the text here will
            // be replaced by data read from database.
            // So each Todo instance will have data.
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}