import 'package:record_app/features/home/redux/home_page_middleware.dart';
import 'package:record_app/redux/navigation/navigation_middleware.dart';
import 'package:redux/redux.dart';
import 'app_state.dart';
import 'package:redux_thunk/redux_thunk.dart';

List<Middleware<AppState>> createAppMiddleware() {
  return [
    ...navigationMiddleware(),
    ...homePageMiddleware(),
    ...[thunkMiddleware],
  ];
}
