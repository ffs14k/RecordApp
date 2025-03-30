import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:layout/layout.dart';
import 'package:record_app/design_system/molecules/theme_data_fun.dart';
import 'package:record_app/entities/ui/locale_id.dart';
import 'package:record_app/generated/l10n/app_localizations.dart';
import 'package:record_app/redux/app/app_action.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:record_app/routing/app_router.dart';

class RecordApp extends StatelessWidget {
  final Store<AppState> store;
  final AppRouter router;
  const RecordApp({
    required this.store,
    required this.router,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: StoreConnector(
        onInit: (store) {
          store.dispatch(AppInitialized());
        },
        converter: (Store<AppState> store) => store,
        builder: (context, model) {
          return Layout(
            child: store.state.isLoaded ? _app(context) : _loadingApp(),
          );
        },
      ),
    );
  }

  Widget _loadingApp() {
    return const Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(left: 80),
        child: CupertinoActivityIndicator(
          color: Colors.black,
          radius: 10,
        ),
      ),
    );
  }

  Widget _app(BuildContext context) {
    return MaterialApp.router(
      theme: themeDataFun(),
      routerConfig: router.config(
        navigatorObservers: () => [
          AutoRouteObserver(),
        ],
      ),
      locale: Locale(store.state.appSettings.locale.rawValue),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
