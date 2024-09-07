import 'package:flutter/material.dart';
import 'package:todo_bloc_app/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tasks App',
      theme: ThemeData(
        //useMaterial3: true,
        // colorScheme: ColorScheme.fromSeed(
        //   seedColor: Colors.blue,
        //   primary: Colors.blue,
        // ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, // Ensures the app bar uses a blue color
          surfaceTintColor: Colors.transparent, // Ensures no extra tinting
        ),
      ),
      home: TasksScreen(),
    );
  }
}
