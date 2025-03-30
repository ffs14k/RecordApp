import 'package:injectable/injectable.dart';
import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/repositories/config/app_config.dart';
import 'package:record_app/repositories/records_pool/record_item.dart';

@singleton
class RecordsPool {
  final List<RecordItem> _records = [];
  List<RecordItem> get records => _records;

  RecordItem? storeRecordedAudio(RecordItem item) {
    if (_records.length == getIt<AppConfig>().maxRecordsCount) {
      return null;
    }
    _records.add(item);
    return item;
  }

  void removeRecordedAudio(String id) {
    _records.removeWhere((e) => e.id == id);
  }
}
