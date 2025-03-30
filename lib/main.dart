import 'dart:async';
import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/DI/get_it/get_it_initializer.dart';
import 'package:record_app/record_app.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:flutter/material.dart';
import 'package:record_app/routing/app_router.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await configureDependencies();

      runApp(
        RecordApp(
          store: getIt<AppStore>(),
          router: getIt<AppRouter>(),
        ),
      );
    },
    (error, stackTrace) async {
      // track ex
    },
  );
}
