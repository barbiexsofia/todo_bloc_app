import 'package:flutter/material.dart';
import 'package:todo_bloc_app/models/todo_model.dart';

class TodoListView extends StatelessWidget {
  final List<Todo> todos;

  const TodoListView({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        return ListTile(
          title: Text(todo.name),
        );
      },
    );
  }
}
