import 'package:flutter/material.dart';
import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/features/pre_recording_dialog_page/pre_recording_dialog_page_vmmapper.dart';

class PreRecordingDialogPageViewModel {
  final Function(BuildContext) okTapped;
  PreRecordingDialogPageViewModel(this.okTapped);

  factory PreRecordingDialogPageViewModel.create() {
    return getIt<PreRecordingDialogPageVmmapper>().map();
  }
}
