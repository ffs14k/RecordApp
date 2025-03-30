import 'package:injectable/injectable.dart';
import 'package:record_app/network/service/user_query_service/user_query_service.dart';
import 'package:record_app/repositories/records_pool/record_item.dart';
import 'package:record_app/network/api/record_app_rest_api.dart';
import 'package:record_app/utils/environment/env_injectable.dart';

@mock
@Injectable(as: UserQueryService)
class UserQueryServiceMock extends UserQueryService {
  final RecordAppRestApi api;
  UserQueryServiceMock(this.api);

  @override
  Future<void> sendUserQuery(
    String name,
    String phone,
    List<RecordItem> records,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    return Future.value();
  }
}
