import 'package:record_app/repositories/records_pool/record_item.dart';

abstract class UserQueryService {
  Future<void> sendUserQuery(
    String name,
    String phone,
    List<RecordItem> records,
  );
}
