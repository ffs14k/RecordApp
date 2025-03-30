import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:record_app/DI/dio/dio_base_option_builder.dart';

@module
abstract class DioInject {
  Dio dio(DioBaseOptionBuilder optionsBuilder) => Dio(
        optionsBuilder.build(),
      );
}
