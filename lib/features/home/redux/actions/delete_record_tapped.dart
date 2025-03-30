import 'package:injectable/injectable.dart';
import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/features/home/redux/actions/records_changed.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/repositories/records_pool/records_pool.dart';
import 'package:redux_thunk/redux_thunk.dart';

@injectable
class DeleteRecordButtonTapped extends CallableThunkAction<AppState> {
  String recordId;
  final RecordsPool recordsPool;

  DeleteRecordButtonTapped(
    @factoryParam this.recordId,
    this.recordsPool,
  );

  @override
  call(AppStore store) {
    recordsPool.removeRecordedAudio(recordId);
    store.dispatch(getIt<RecordsChanged>());
  }
}
