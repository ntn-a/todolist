import 'package:flutter/material.dart';

class Todo {
  /// Takes a string of text and returns
  /// a card widget.
  Widget todoDrawCard(String text) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Text(text),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
