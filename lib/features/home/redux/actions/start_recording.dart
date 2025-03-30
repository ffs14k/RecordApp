import 'package:injectable/injectable.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/features/home/redux/home_page_pure_actions.dart';
import 'package:record_app/repositories/audio_recorder/audio_recorder.dart';
import 'package:redux_thunk/redux_thunk.dart';

@injectable
class StartRecording extends CallableThunkAction<AppState> {
  AudioRecorder audioRecorder;
  StartRecording(this.audioRecorder);

  @override
  call(AppStore store) {
    audioRecorder.start();

    audioRecorder.durationStream.listen(
      (recordingDuration) {
        store.dispatch(
          HomeRecordingDurationsPureAction(recordingDuration),
        );
      },
    );

    store.dispatch(
      HomeRecordingStatePureAction(true),
    );
    store.dispatch(
      HomeRecordingDurationsPureAction(Duration.zero),
    );
  }
}
