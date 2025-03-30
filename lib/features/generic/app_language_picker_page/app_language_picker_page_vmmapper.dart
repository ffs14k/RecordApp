import 'package:injectable/injectable.dart';
import 'package:record_app/entities/ui/locale_id.dart';
import 'package:record_app/features/generic/app_language_picker_page/app_language_picker_page_view_model.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/redux/app_setting/app_settings_actions.dart';

@injectable
class AppLanguagePickerPageVmmapper {
  final AppStore store;
  AppLanguagePickerPageVmmapper(this.store);

  AppLanguagePickerPageViewModel map() {
    return AppLanguagePickerPageViewModel(
      _items(),
    );
  }

  List<AppLanguagePickerPageItemViewModel> _items() {
    return LocaleId.values
        .map(
          (locale) => AppLanguagePickerPageItemViewModel(
            locale,
            store.state.appSettings.locale.rawValue == locale.rawValue,
            (context) => store.dispatch(
              LocaleSelectedAction(locale, context),
            ),
          ),
        )
        .toList();
  }
}
