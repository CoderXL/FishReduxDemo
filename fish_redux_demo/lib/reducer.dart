import 'package:fish_redux/fish_redux.dart';
import 'package:fishreduxdemo/action.dart';
import 'package:fishreduxdemo/state.dart';

Reducer<CounterState> buildReducer() {
  return asReducer<CounterState>(<Object, Reducer<CounterState>>{
    CounterAction.add: _add,
  });
}

CounterState _add(CounterState state, Action action) {
  final CounterState newState = state.clone();
  newState.count = ++state.count;
  return newState;
}