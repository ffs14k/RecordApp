import 'package:injectable/injectable.dart';
import 'package:record_app/entities/ui/locale_id.dart';
import 'package:record_app/features/generic/widgets/language_text/language_text_widget_view_model.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/repositories/mapper_helper/app_language_picker_mapper_helper.dart';

@injectable
class LanguageTextWidgetVmmapper {
  final AppStore store;
  final AppLanguagePickerMapperHelper mapperHelper;
  LanguageTextWidgetVmmapper(this.store, this.mapperHelper);

  LanguageTextWidgetViewModel map(LocaleId? locale) {
    final lcId = locale ??= store.state.appSettings.locale;
    return LanguageTextWidgetViewModel(
      mapperHelper.languageFlag(lcId),
      mapperHelper.languageName(lcId),
    );
  }
}
