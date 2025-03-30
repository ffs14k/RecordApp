import 'package:record_app/utils/environment/env_type.dart';
import 'package:record_app/utils/environment/env_type_raw.dart';

EnvType getEnv() {
  const env = String.fromEnvironment('ENV', defaultValue: 'debug');
  switch (env) {
    case mockRaw:
      return EnvType.mock;
    case debugRaw:
      return EnvType.debug;
    case profileRaw:
      return EnvType.profile;
    case releaseRaw:
      return EnvType.release;
    default:
      return EnvType.debug;
  }
}
