import 'package:flutter/cupertino.dart';
import 'package:record_app/generated/l10n/app_localizations.dart';

extension L10nBuildContextExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
