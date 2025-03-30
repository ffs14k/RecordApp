import 'package:injectable/injectable.dart';
import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/features/home/redux/actions/gif_record_button_tapped.dart';
import 'package:record_app/features/home/subwidgets/record_contol/record_control_widget_view_model.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/repositories/config/app_config.dart';

@injectable
class RecordControlWidgetViewModelMapper {
  AppConfig appConfig;

  RecordControlWidgetViewModelMapper(this.appConfig);

  RecordControlWidgetViewModel map(AppStore store) {
    return RecordControlWidgetViewModel(
      store.state.homePageState.isRecording,
      store.state.homePageState.isRecording
          ? '${store.state.homePageState.recordingDuration.inSeconds}'
          : '${store.state.homePageState.records.length} / ${appConfig.maxRecordsCount}',
      (context) => {
        store.dispatch(
          getIt<GifRecordButtonTapped>(param1: context),
        )
      },
    );
  }
}
