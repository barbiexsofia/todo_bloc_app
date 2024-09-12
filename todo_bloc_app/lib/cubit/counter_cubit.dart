import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    print("before: $state");
    emit(state + 1);
    print("after: $state");
  }

  void decrement() {
    print("before: $state");

    if (state == 0) {
      return;
    }
    emit(state - 1);
    print("after: $state");
  }
}
