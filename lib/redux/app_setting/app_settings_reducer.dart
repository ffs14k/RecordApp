import 'package:record_app/entities/ui/locale_id.dart';
import 'package:record_app/redux/app_setting/app_settings_pure_actions.dart';
import 'package:record_app/redux/app_setting/app_settings_state.dart';
import 'package:redux/redux.dart';

AppSettingsState appSettingsReducer(AppSettingsState state, action) => AppSettingsState(
      locale: _localeReducer(state.locale, action),
    );

final _localeReducer = TypedReducer<LocaleId, LocalePureAction>(
  (state, action) {
    return action.locale;
  },
);
