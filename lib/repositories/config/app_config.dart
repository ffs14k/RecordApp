import 'package:injectable/injectable.dart';

@singleton
class AppConfig {
  final maxSingleAudioQueryRecordTime = const Duration(seconds: 180);
  final maxRecordsCount = 3;
  final maxPhoneLength = 14;
  final maxNameLength = 26;

  get nameInputRegex => "^[a-zA-Zа-яА-Я ]{2,$maxNameLength}\$";
  get phoneInputRegex => "^\\+?[1-9][0-9]{7,${maxPhoneLength - 1}}";
}
