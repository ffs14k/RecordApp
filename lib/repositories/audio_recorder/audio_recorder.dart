import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@singleton
class AudioRecorder {
  Stream<Duration> get durationStream => _durationStreamContoller.stream;
  Duration get duration => Duration(seconds: _recordDuration);
  String? recordId;

  int _recordDuration = 0;
  var _durationStreamContoller = StreamController<Duration>();
  Timer? _timer;

  start() {
    recordId = UniqueKey().toString();
    _durationStreamContoller = StreamController<Duration>();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      _recordDuration += 1;
      _durationStreamContoller.sink.add(duration);
    });
  }

  stop() {
    recordId = null;
    _timer?.cancel();
    _timer = null;
    _durationStreamContoller.close();
    _durationStreamContoller = StreamController<Duration>();
    _recordDuration = 0;
  }
}
