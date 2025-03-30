import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/features/home/redux/home_page_state.dart';
import 'package:reselect/reselect.dart';

typedef HomePageStateSelector = HomePageState Function(AppState);

final HomePageStateSelector homePageState = (appState) => appState.homePageState;

final isButtonEnabledSelector = createSelector1(
  homePageState,
  (homeState) {
    return [
      !homeState.isRecording,
      homeState.records.isNotEmpty,
    ].reduce((value, element) => value && element);
  },
);
