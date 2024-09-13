import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_app/models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    if (title.isEmpty) {
      addError('Title cannot be empty');
      return;
    }

    final todo = Todo(name: title, createdAt: DateTime.now());

    //state.add(todo);
    emit([
      ...state,
      todo
    ]); // the three dots makes it so the identity of the object is different, and therefore state will be emitted.
  }

  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
    print('TodoCubit - $change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print('TodoCubit - $error');
  }
}
