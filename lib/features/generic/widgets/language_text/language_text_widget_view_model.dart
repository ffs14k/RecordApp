

import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/entities/ui/locale_id.dart';
import 'package:record_app/features/generic/widgets/language_text/language_text_widget_vmmapper.dart';

class LanguageTextWidgetViewModel {
  final String flag;
  final String language;
  LanguageTextWidgetViewModel(this.flag, this.language);

  factory LanguageTextWidgetViewModel.create(LocaleId? locale) {
    return getIt<LanguageTextWidgetVmmapper>().map(locale);
  }
}
