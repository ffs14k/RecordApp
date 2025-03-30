import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/features/home/redux/actions/start_recording.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/features/pre_recording_dialog_page/pre_recording_dialog_page_action.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> homePageMiddleware() {
  return [
    _onPreRecordingDialogClose.call,
  ];
}

final _onPreRecordingDialogClose = TypedMiddleware<AppState, PreRecordingDialogPageClosed>(
  (store, action, next) {
    next(getIt<StartRecording>());
  },
);
