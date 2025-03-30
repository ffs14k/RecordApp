import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:record_app/utils/json_serialize_helpers.dart';

part 'home_page_state.freezed.dart';
part 'home_page_state.g.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(false) bool showLoading,
    @Default(false) bool isRecording,
    @Default(Duration.zero) Duration recordingDuration,
    @Default([]) List<HomeRecordsListItem> records,
  }) = _HomePageState;

  factory HomePageState.fromJson(
    Map<String, Object?> json,
  ) =>
      _$HomePageStateFromJson(json);
}

@freezed
abstract class HomeRecordsListItem with _$HomeRecordsListItem {
  const factory HomeRecordsListItem({
    @Default("") String recordId,
    @JsonKey(
      fromJson: durationFromJson,
      toJson: durationToJson,
    )
    @Default(Duration.zero)
    Duration duration,
    @Default(false) bool isPlaying,
  }) = _HomeRecordsListItem;

  factory HomeRecordsListItem.fromJson(
    Map<String, Object?> json,
  ) =>
      _$HomeRecordsListItemFromJson(json);
}
