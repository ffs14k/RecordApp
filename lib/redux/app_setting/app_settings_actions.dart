import 'package:flutter/material.dart';
import 'package:record_app/entities/ui/locale_id.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/redux/app_setting/app_settings_pure_actions.dart';
import 'package:record_app/redux/navigation/navigation_action.dart';
import 'package:redux_thunk/redux_thunk.dart';

class LocaleSelectedAction extends CallableThunkAction<AppState> {
  final LocaleId locale;
  final BuildContext context;
  LocaleSelectedAction(this.locale, this.context);

  @override
  Future<void> call(AppStore store) async {
    store.dispatch(LocalePureAction(locale));
    await Future.delayed(const Duration(milliseconds: 200));
    store.dispatch(NavigateBackContextAction(context));
  }
}
