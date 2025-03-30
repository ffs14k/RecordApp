import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/features/home/redux/home_page_state.dart';
import 'package:reselect/reselect.dart';

HomePageState _homePageState(AppState appState) => appState.homePageState;

final isSendButtonEnabledSelector = createSelector1(
  _homePageState,
  (homeState) {
    return [
      !homeState.isRecording,
      homeState.records.isNotEmpty,
    ].reduce((value, element) => value && element);
  },
);
