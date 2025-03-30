import 'package:flutter/material.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/redux/navigation/navigation_action.dart';
import 'package:record_app/features/pre_recording_dialog_page/pre_recording_dialog_page_action.dart';
import 'package:redux/redux.dart';

class PreRecordingDialogPageViewModel {
  final Function(BuildContext) okTapped;
  PreRecordingDialogPageViewModel(this.okTapped);

  factory PreRecordingDialogPageViewModel.converter(Store<AppState> store) {
    return PreRecordingDialogPageViewModel(
      (context) {
        store.dispatch(
          NavigateBackContextAction(context),
        );
        store.dispatch(
          PreRecordingDialogPageClosed(),
        );
      },
    );
  }
}
