// Nhan Nguyen
// June 21, 2022
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
          children: [
            ElevatedButton(
              onPressed: (){
                // When button is submitted, put data into database
                // and when todolist is redrawn, new card of data should
                // be present.
              }, 
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 0,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter a to-do!",
                          focusColor: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 25),
                      ElevatedButton(
                        onPressed: (){
                          // Need to add functionality
                          // to push data into database.
                        }, 
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black87,
                        ),
                        child: const Text("Submit"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}