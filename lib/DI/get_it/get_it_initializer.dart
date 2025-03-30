import 'package:injectable/injectable.dart';
import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/DI/get_it/get_it_initializer.config.dart';
import 'package:record_app/utils/environment/env_type.dart';
import 'package:record_app/utils/environment/get_env.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  await getIt.$initGetIt(environment: getEnv().rawValue);
}
