import 'package:fun_with_bloc/app/dialog/alert_service.dart';
import 'package:get_it/get_it.dart';

class Dependency {
  Dependency._init();
  static final sl = GetIt.instance;

  static void initDependency() {
    sl.registerLazySingleton(() => AlertServiceImpl());
  }
}
