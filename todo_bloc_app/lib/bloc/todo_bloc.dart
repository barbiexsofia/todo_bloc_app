import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_app/models/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {
    // Handle the TodoAdded event
    on<TodoAddEvent>((event, emit) {
      // Validate the title
      if (event.title.isEmpty) {
        emit(TodoError('Title cannot be empty', (state as TodoLoaded).todos));
        return;
      }

      final newTodo = Todo(name: event.title, createdAt: DateTime.now());

      // Emit the updated state with the new Todo
      if (state is TodoLoaded) {
        final updatedTodos = List<Todo>.from((state as TodoLoaded).todos)
          ..add(newTodo);
        emit(TodoLoaded(updatedTodos));
      } else {
        emit(TodoLoaded([newTodo]));
      }
    });
  }
}
