import 'package:flutter/widgets.dart';
import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/entities/ui/locale_id.dart';
import 'package:record_app/features/generic/app_language_picker_page/app_language_picker_page_vmmapper.dart';

class AppLanguagePickerPageViewModel {
  final List<AppLanguagePickerPageItemViewModel> items;
  AppLanguagePickerPageViewModel(this.items);

  factory AppLanguagePickerPageViewModel.create() {
    return getIt<AppLanguagePickerPageVmmapper>().map();
  }
}

class AppLanguagePickerPageItemViewModel {
  final LocaleId locale;
  final bool isSelected;
  final void Function(BuildContext) onSelect;
  AppLanguagePickerPageItemViewModel(
    this.locale,
    this.isSelected,
    this.onSelect,
  );
}
