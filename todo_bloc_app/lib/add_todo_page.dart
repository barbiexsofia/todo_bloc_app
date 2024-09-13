import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_app/cubit/todo_cubit.dart';
import 'package:todo_bloc_app/models/todo_model.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final todoTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: todoTitleController,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.read<TodoCubit>().addTodo(
                      todoTitleController.text.trim(),
                    );
                Navigator.of(context).pop();
                // Longer alternative:
                // BlocProvider.of<TodoCubit>(context).addTodo(
                //   todoTitleController.text.trim(),
                // );
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
