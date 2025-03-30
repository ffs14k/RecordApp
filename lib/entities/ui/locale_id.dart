import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_id.g.dart';

@JsonEnum(alwaysCreate: true)
enum LocaleId {
  @JsonValue('en')
  en,
  @JsonValue('es')
  es,
}

extension RawValue on LocaleId {
  String get rawValue {
    return _$LocaleIdEnumMap[this] ?? "";
  }
}
