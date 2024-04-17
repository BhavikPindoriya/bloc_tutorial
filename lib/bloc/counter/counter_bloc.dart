import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/bloc/counter/counter_event.dart';
import 'package:bloc_tutorial/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvents, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit) {
    emit(
      state.copyWith(counter: state.counter + 1),
    );
  }

  void _decrement(DecrementCounter event, Emitter<CounterState> emit) {
    emit(
      state.copyWith(counter: state.counter - 1),
    );
  }
}
