import 'package:injectable/injectable.dart';
import 'package:record_app/features/pre_recording_dialog_page/pre_recording_dialog_page_action.dart';
import 'package:record_app/features/pre_recording_dialog_page/pre_recording_dialog_page_view_model.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/redux/navigation/navigation_action.dart';

@injectable
class PreRecordingDialogPageVmmapper {
  AppStore store;
  PreRecordingDialogPageVmmapper(this.store);

  PreRecordingDialogPageViewModel map() {
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
