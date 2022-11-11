import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/todo_provider.dart';

class TodoWidget extends StatefulWidget {
  const TodoWidget({super.key});

  @override
  State<TodoWidget> createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(builder: (context, index, child) {
      return ListView.builder(
          itemCount: 5,
          //itemCount: index.favoriteContacts.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2.0,
              child: ListTile(
                  title: Text('todo'),
                  subtitle:  Text('subtitle'),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete_forever_rounded),
                  )),
            );
          });
    });
  }
}
