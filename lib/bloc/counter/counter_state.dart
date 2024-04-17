import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;
  CounterState({this.counter = 1});

  CounterState copyWith({int? counter}) {
    //copyWith is the counter ma ape koi value provide na kari ae to pahela hoy tej ave and jo provide kari ae to te ni value change thai jay
    return CounterState(counter: counter ?? this.counter);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}
