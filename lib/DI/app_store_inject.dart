import 'package:injectable/injectable.dart';
import 'package:record_app/redux/app/app_middleware.dart';
import 'package:record_app/redux/app/app_reducer.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/redux/app/app_store.dart';

@module
abstract class AppStoreInject {
  @singleton
  AppStore appState() => AppStore(
        appReducer,
        initialState: const AppState(),
        middleware: createAppMiddleware(),
      );
}
