import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:record_app/entities/ui/locale_id.dart';
import 'package:record_app/generated/l10n/app_localizations.dart';
import 'package:record_app/redux/app/app_store.dart';

@lazySingleton
class AppTextProvider {
  final AppStore store;
  AppTextProvider(this.store);

  AppLocalizations get l10n => lookupAppLocalizations(
        Locale(
          store.state.appSettings.locale.rawValue,
        ),
      );

  String get nl => '\n'; // new line
  String get bullet => '\u2022'; // •
  String get infinity => '\u221E'; // ∞
}
