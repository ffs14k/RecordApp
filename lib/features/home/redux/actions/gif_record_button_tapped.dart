import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/features/home/redux/actions/records_changed.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/features/home/redux/home_page_pure_actions.dart';
import 'package:record_app/redux/navigation/navigation_action.dart';
import 'package:record_app/repositories/audio_recorder/audio_recorder.dart';
import 'package:record_app/repositories/config/app_config.dart';
import 'package:record_app/repositories/records_pool/record_item.dart';
import 'package:record_app/repositories/records_pool/records_pool.dart';
import 'package:record_app/routing/app_router.gr.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

@injectable
class GifRecordButtonTapped extends CallableThunkAction<AppState> {
  final BuildContext context;
  final AudioRecorder recorder;
  final RecordsPool recordsPool;
  final AppConfig appConfig;

  GifRecordButtonTapped(
    @factoryParam this.context,
    this.recorder,
    this.recordsPool,
    this.appConfig,
  );

  @override
  call(Store<AppState> store) async {
    if (store.state.homePageState.isRecording) {
      final newItem = RecordItem(recorder.duration);
      recordsPool.storeRecordedAudio(newItem);
      recorder.stop();
      store.dispatch(
        HomeRecordingStatePureAction(false),
      );
      store.dispatch(
        getIt<RecordsChanged>(),
      );
    } else {
      if (recordsPool.records.length >= appConfig.maxRecordsCount) {
        return;
      }
      store.dispatch(
        NavigatePushAction(
          context,
          const PreRecordingDialogRoute(),
        ),
      );
    }
  }
}
