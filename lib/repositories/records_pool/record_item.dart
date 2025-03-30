import 'package:flutter/foundation.dart';

class RecordItem {
  final id = UniqueKey().toString();
  final Duration duration;

  RecordItem(
    this.duration,
  );
}
