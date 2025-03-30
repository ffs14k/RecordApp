import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:record_app/features/home/redux/home_page_state.dart';
import 'package:record_app/redux/app_setting/app_settings_state.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool isLoaded,
    @Default(AppSettingsState()) AppSettingsState appSettings,
    @Default(HomePageState()) HomePageState homePageState,
  }) = _AppState;

  factory AppState.fromJson(
    Map<String, Object?> json,
  ) =>
      _$AppStateFromJson(json);
}
