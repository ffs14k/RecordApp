import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/redux/app/app_pure_actions.dart';
import 'package:record_app/features/home/redux/home_page_reducer.dart';
import 'package:record_app/redux/app_setting/app_settings_reducer.dart';
import 'package:redux/redux.dart';

AppState appReducer(AppState state, action) => AppState(
      isLoaded: _isLoadingReducer.call(state.isLoaded, action),
      appSettings: appSettingsReducer(state.appSettings, action),
      homePageState: homeReducer(state.homePageState, action),
    );

final _isLoadingReducer = TypedReducer<bool, AppIsLoadedPureAction>(
  (state, action) {
    return action.isLoaded;
  },
);
