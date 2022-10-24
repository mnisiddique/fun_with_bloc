import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/dependency/dependency.dart';
import 'package:fun_with_bloc/app/navigation/screen.dart';

class RouteGenerator {
  const RouteGenerator();
  Route generateRoute(RouteSettings routeSettings) {
    Screen screen = Dependency.sl.get<Screen>(instanceName: routeSettings.name);
    return MaterialPageRoute(
      settings: routeSettings,
      maintainState: screen.screenConfig.maintainState,
      fullscreenDialog: screen.screenConfig.fullscreenDialog,
      builder: (context) => screen.build(routeSettings),
    );
  }
}
