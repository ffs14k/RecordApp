import 'package:injectable/injectable.dart';
import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/features/home/redux/actions/delete_record_tapped.dart';
import 'package:record_app/features/home/subwidgets/records_list/record_list_item_model.dart';
import 'package:record_app/features/home/subwidgets/records_list/records_list_view_model.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/repositories/audio_recorder/audio_recorder.dart';

@injectable
class RecordsListViewModelMapper {
  AudioRecorder audioRecorder;

  RecordsListViewModelMapper(this.audioRecorder);

  RecordsListViewModel map(AppStore store) {
    final records = store.state.homePageState.records.map((e) {
      return RecordsListItemModel(
        e.recordId,
        e.duration,
        audioRecorder.recordId == e.recordId ? e.duration : Duration.zero,
        () {},
        () {
          store.dispatch(
            getIt<DeleteRecordButtonTapped>(param1: e.recordId),
          );
        },
      );
    }).toList();

    return RecordsListViewModel(records);
  }
}
