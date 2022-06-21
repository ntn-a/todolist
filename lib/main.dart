import 'package:flutter/material.dart';
import 'package:todolist/pages/splash.dart';

void main() => MaterialApp(
  initialRoute: "/splash",
  routes: {
    "/splash": (context) => Splash(),
    "/todolist": (context) => TodoList(),
    "/addentry": (context) => AddEntry(),
  },
);