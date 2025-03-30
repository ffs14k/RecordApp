import 'package:flutter/cupertino.dart';

class RecordControlWidgetViewModel {
  final bool isRecording;
  final String recordDurationBage;
  final Function(BuildContext) onRecordBtnTap;

  RecordControlWidgetViewModel(
    this.isRecording,
    this.recordDurationBage,
    this.onRecordBtnTap,
  );
}
