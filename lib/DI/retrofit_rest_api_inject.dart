import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:record_app/network/api/record_app_rest_api.dart';

@module
abstract class RetrofitRestApiInject {
  RecordAppRestApi build(Dio dio) => RecordAppRestApi(dio);
}