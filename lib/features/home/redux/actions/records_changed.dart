import 'package:injectable/injectable.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/features/home/redux/home_page_state.dart';
import 'package:record_app/features/home/redux/home_page_pure_actions.dart';
import 'package:record_app/repositories/records_pool/records_pool.dart';
import 'package:redux_thunk/redux_thunk.dart';

@injectable
class RecordsChanged extends CallableThunkAction<AppState> {
  final RecordsPool recordsPool;
  RecordsChanged(this.recordsPool);

  @override
  call(AppStore store) async {
    final records = recordsPool.records.map(
      (e) {
        return HomeRecordsListItem(
          recordId: e.id,
          duration: e.duration,
          isPlaying: false,
        );
      },
    ).toList();

    store.dispatch(
      HomeRecordListPureAction(records),
    );
  }
}
