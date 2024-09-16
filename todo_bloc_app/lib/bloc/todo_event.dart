part of 'todo_bloc.dart';

abstract class TodoEvent {}

class TodoAddEvent extends TodoEvent {
  final String title;

  TodoAddEvent(this.title);
}
