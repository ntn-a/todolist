import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class AddEntry extends StatefulWidget {
  const AddEntry({Key? key}) : super(key: key);

  @override
  State<AddEntry> createState() => _AddEntryState();
}

class _AddEntryState extends State<AddEntry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Entry"),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          children: const [
            SizedBox(
              child: Text("TEST"),
            ),
            SizedBox(
              child: Text("TEST"),
            ),
            SizedBox(
              child: Text("TEST"),
            ),
          ],
        ),
      ),
    );
  }
}