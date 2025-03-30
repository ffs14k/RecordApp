import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:record_app/repositories/env_vars/env_vars.dart';

abstract class DioBaseOptionBuilder {
  DioBaseOptionBuilder();
  BaseOptions build();
}

@Injectable(as: DioBaseOptionBuilder)
class DioBaseOptionBuilderImpl extends DioBaseOptionBuilder {
  final EnvVars envVars;
  DioBaseOptionBuilderImpl(this.envVars);

  @override
  BaseOptions build() {
    return BaseOptions(
      baseUrl: envVars.baseApiUrl,
    );
  }
}
