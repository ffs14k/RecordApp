import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:record_app/repositories/env_vars/env_vars.dart';

abstract class DioOptionsBuilder {
  BaseOptions build();
}

@Injectable(as: DioOptionsBuilder)
class DioOptionsBuilderImpl extends DioOptionsBuilder {
  final EnvVars envVars;
  DioOptionsBuilderImpl(this.envVars);

  @override
  BaseOptions build() {
    final headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };

    return BaseOptions(
      baseUrl: envVars.baseApiUrl,
      headers: headers,
    );
  }
}
