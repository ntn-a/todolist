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
  Todo t = Todo();
  List<Widget> cards = [];
  List<Map> list = [];
  Db db = Db();

  @override
  void initState() {
    db.openDb();
    db.getData(list);
    fillCards(cards, list, t);
    super.initState();
  }

  /// List of Todo objects, so what'll happen is that
  /// As data is stored in the database, these cards can
  /// be generated from the Widget and can be displayed.
  void fillCards(List<Widget> c, List<Map> m, Todo t) async {
    for (int i = 0; i < m.asMap().length; i++) {
      c.add(t.todoDrawCard(m.asMap()['todo'].toString()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TodoList"),
        backgroundColor: Colors.black87,
        actions: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                db.deleteDb();
                cards.clear();
              });
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.grey,
            ),
            child: const Text("Clear List"),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: Center(
          child: ListView(
            children: [
              Column(
                children: cards,
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
