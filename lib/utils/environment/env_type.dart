import 'package:record_app/utils/environment/env_type_raw.dart';

enum EnvType {
  mock,
  debug,
  profile,
  release,
}

extension EnvTypeExt on EnvType {
  String get rawValue {
    switch (this) {
      case EnvType.mock:
        return mockRaw;
      case EnvType.debug:
        return debugRaw;
      case EnvType.profile:
        return profileRaw;
      case EnvType.release:
        return releaseRaw;
    }
  }
}
