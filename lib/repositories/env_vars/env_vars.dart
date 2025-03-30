import 'package:record_app/utils/environment/env_type.dart';

abstract class EnvVars {
  EnvType get env;
  String get baseApiUrl;
}
