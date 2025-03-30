import 'package:record_app/utils/is_debug.dart';

debugPrint(
  String name, {
  StackTrace? stackTrace,
  Object? error,
}) {
  if (!isDebug()) {
    return;
  }
  print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n\n");
  print(name);
  print(stackTrace.toString());
  print(error?.toString());
}
