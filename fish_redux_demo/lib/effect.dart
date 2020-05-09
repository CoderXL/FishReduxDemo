import 'package:fish_redux/fish_redux.dart';
import 'package:fishreduxdemo/action.dart';
import 'package:fishreduxdemo/state.dart';

Effect<CounterState> buildEffect() {
  return combineEffects(<Object, Effect<CounterState>>{
    CounterAction.onAdd: _onAdd,
  });
}

void _onAdd(Action action, Context<CounterState> ctx) {
  print("_onAdd");
  ctx.dispatch(CounterActionCreator.add());
}