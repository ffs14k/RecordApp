import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_id.g.dart';

@JsonEnum(alwaysCreate: true)
enum TabId {
  @JsonValue(0)
  home,
  @JsonValue(1)
  aboutUs,
}
