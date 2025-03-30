import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/redux/app/app_pure_actions.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

class AppInitialized extends CallableThunkAction<AppState> {
  @override
  call(Store<AppState> store) async {
    await Future.delayed(const Duration(seconds: 1));
    store.dispatch(AppIsLoadedPureAction(true));
  }
}
