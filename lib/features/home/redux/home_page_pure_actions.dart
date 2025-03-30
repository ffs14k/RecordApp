import 'package:record_app/features/home/redux/home_page_state.dart';

class HomeLoadingStatePureAction {
  bool showLoader;
  HomeLoadingStatePureAction(this.showLoader);
}

class HomeRecordingStatePureAction {
  bool isRecording;
  HomeRecordingStatePureAction(this.isRecording);
}

class HomeRecordingDurationsPureAction {
  Duration duration;
  HomeRecordingDurationsPureAction(this.duration);
}

class HomeRecordListPureAction {
  final List<HomeRecordsListItem> records;
  HomeRecordListPureAction(this.records);
}

class HomePlayingRecordStatePureAction {
  final bool isPLaying;
  final String? recordId;
  HomePlayingRecordStatePureAction(this.isPLaying, this.recordId);
}
