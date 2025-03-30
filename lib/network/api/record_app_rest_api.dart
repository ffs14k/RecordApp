import 'package:dio/dio.dart';
// ignore: depend_on_referenced_packages
import 'package:retrofit/retrofit.dart';

part 'record_app_rest_api.g.dart';

@RestApi()
abstract class RecordAppRestApi {
  factory RecordAppRestApi(Dio dio) = _RecordAppRestApi;

  @POST('/user-query')
  @MultiPart()
  Future<void> userQuery(
    @Part() String name,
    @Part() String phone,
    @Part() List<MultipartFile> files,
  );
}
