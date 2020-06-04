import 'package:dmessanger_mobile/services/auth.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void registerLocator() {
  locator.registerLazySingleton(() => AuthService());
}