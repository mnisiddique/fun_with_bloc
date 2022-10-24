import 'package:fun_with_bloc/app/navigation/index.dart';
import 'package:fun_with_bloc/app/navigation/route_names.dart';
import 'package:fun_with_bloc/screens/export_scr.dart';
import 'package:get_it/get_it.dart';

class ScreenBuilderDep {
  ScreenBuilderDep._init();

  static void init(GetIt sl) {
    sl.registerFactory<Screen>(
      () => LandingScreen(),
      instanceName: RouteNames.klandingRoute,
    );
  }
}
