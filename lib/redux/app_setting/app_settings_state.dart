import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:record_app/entities/ui/locale_id.dart';

part 'app_settings_state.freezed.dart';
part 'app_settings_state.g.dart';

@freezed
class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState({
    @Default(LocaleId.en) LocaleId locale,
  }) = _AppSettingsState;

  factory AppSettingsState.fromJson(
    Map<String, Object?> json,
  ) =>
      _$AppSettingsStateFromJson(json);
}
