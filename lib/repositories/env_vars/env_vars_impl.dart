import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:record_app/generated/flutter_gen/assets.gen.dart';
import 'package:record_app/repositories/env_vars/env_vars.dart';
import 'package:record_app/utils/environment/env_type.dart';
import 'package:record_app/utils/environment/get_env.dart';

@LazySingleton(as: EnvVars)
class EnvVarsImpl extends EnvVars {
  final EnvType _env;
  EnvVarsImpl(this._env);

  @FactoryMethod(preResolve: true)
  static Future<EnvVars> create() async {
    final env = getEnv();
    await dotenv.load(fileName: _getEnvFileName(env));
    return EnvVarsImpl(env);
  }

  @override
  EnvType get env => _env;

  @override
  String get baseApiUrl => dotenv.get('base_api_url');
}

String _getEnvFileName(EnvType env) {
  switch (env) {
    case EnvType.mock:
      return Assets.env.aEnvMock;
    case EnvType.debug:
      return Assets.env.aEnvDebug;
    case EnvType.profile:
      return Assets.env.aEnvProfile;
    case EnvType.release:
      return Assets.env.aEnvRelease;
  }
}
