// Nhan Nguyen
// June 21, 2022
import 'package:flutter/material.dart';
import 'package:todolist/pages/addentry.dart';
import 'package:todolist/pages/todolist.dart';

void main() => runApp(MaterialApp(
  initialRoute: "/todolist",
  routes: { // Main program begins at Splash, might add more routes// later.
    "/todolist": (context) => const TodoList(),
    "/addentry": (context) => const AddEntry(),
  },
));