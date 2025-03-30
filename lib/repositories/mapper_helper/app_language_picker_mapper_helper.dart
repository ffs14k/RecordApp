import 'package:injectable/injectable.dart';
import 'package:record_app/entities/ui/locale_id.dart';
import 'package:record_app/l10n/app_text_provider.dart';

@injectable
class AppLanguagePickerMapperHelper {
  AppTextProvider texts;
  AppLanguagePickerMapperHelper(this.texts);

  String languageFlag(LocaleId locale) {
    switch (locale) {
      case LocaleId.en:
        return '🇬🇧';
      case LocaleId.es:
        return '🇪🇸';
    }
  }

  String languageName(LocaleId locale) {
    switch (locale) {
      case LocaleId.en:
        return texts.l10n.langEng;
      case LocaleId.es:
        return texts.l10n.langSpain;
    }
  }
}
