import 'package:fish_redux/fish_redux.dart';
import 'package:fishreduxdemo/effect.dart';
import 'package:fishreduxdemo/reducer.dart';
import 'package:fishreduxdemo/state.dart';
import 'package:fishreduxdemo/view.dart';

class CounterFishReduxPage extends Page<CounterState, Map<String, dynamic>> {
  CounterFishReduxPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
        );
}
