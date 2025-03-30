import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:record_app/network/service/user_query_service/user_query_service.dart';
import 'package:record_app/repositories/records_pool/record_item.dart';
import 'package:record_app/network/api/record_app_rest_api.dart';
import 'package:record_app/utils/environment/env_injectable.dart';

@prod
@profile
@dev
@Injectable(as: UserQueryService)
class UserQueryServiceImpl extends UserQueryService {
  final RecordAppRestApi api;
  UserQueryServiceImpl(this.api);

  @override
  Future<void> sendUserQuery(
    String name,
    String phone,
    List<RecordItem> records,
  ) async {
    final multipartFiles = records.map(
      (e) {
        return MultipartFile.fromBytes(
          [],
          filename: "filename",
          contentType: MediaType("audio", "mpeg"),
        );
      },
    ).toList();

    return await api.userQuery(
      name,
      phone,
      multipartFiles,
    );
  }
}
