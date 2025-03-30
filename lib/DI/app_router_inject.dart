import 'package:injectable/injectable.dart';
import 'package:record_app/routing/app_router.dart';

@module
abstract class AppRouterInject {
  @singleton
  AppRouter appRouter() => AppRouter();
}
