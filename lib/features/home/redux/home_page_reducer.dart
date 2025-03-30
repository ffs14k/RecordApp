import 'package:record_app/features/home/redux/home_page_pure_actions.dart';
import 'package:record_app/features/home/redux/home_page_state.dart';
import 'package:redux/redux.dart';

HomePageState homeReducer(HomePageState state, action) => HomePageState(
      showLoading: _showLoadingReducer.call(state.showLoading, action),
      isRecording: _recordingReducer.call(state.isRecording, action),
      recordingDuration: _recordingDurationReducer.call(state.recordingDuration, action),
      records: _recordsReducer.call(state.records, action),
    );

final _showLoadingReducer = TypedReducer<bool, HomeLoadingStatePureAction>(
  (state, action) {
    return action.showLoader;
  },
);

final _recordingReducer = TypedReducer<bool, HomeRecordingStatePureAction>(
  (state, action) {
    return action.isRecording;
  },
);

final _recordingDurationReducer = TypedReducer<Duration, HomeRecordingDurationsPureAction>(
  (state, action) {
    return action.duration;
  },
);

final _recordsReducer = TypedReducer<List<HomeRecordsListItem>, HomeRecordListPureAction>(
  (state, action) {
    return action.records;
  },
);
