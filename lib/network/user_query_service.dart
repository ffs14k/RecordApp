import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:record_app/repositories/records_pool/record_item.dart';
import 'package:record_app/network/api/record_app_rest_api.dart';

@injectable
class UserQueryService {
  final RecordAppRestApi api;
  UserQueryService(this.api);

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
