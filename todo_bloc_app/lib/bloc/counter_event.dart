// by using "part of" instead of "import", these files are considered part of the same library so I can still modify (extend) any final classes.
part of 'counter_bloc.dart';

// "sealed" makes it so that the subclasses of CounterEvent are known in case of "switch".
// I.E. A switch that does not contain a case for each possible subclass within the sealed superclass will give error.
sealed class CounterEvent {}

// if a class is "final", it cannot be extended outside of this library.
final class CounterIncremented extends CounterEvent {}

final class CounterDecremented extends CounterEvent {}
