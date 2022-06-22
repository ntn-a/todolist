import 'package:flutter/material.dart';
import 'package:todolist/pages/addentry.dart';
import 'package:todolist/pages/splash.dart';
import 'package:todolist/pages/todolist.dart';

void main() => runApp(MaterialApp(
  initialRoute: "/splash",
  routes: {
    "/splash": (context) => const Splash(),
    "/todolist": (context) => const TodoList(),
    "/addentry": (context) => const AddEntry(),
  },
));