import 'package:flutter/material.dart';
import '../screens/export_scr.dart';

class RouteConfig {
  const RouteConfig();
  Route onGenerateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeSettings.name),
      builder: (context) => const MyHomePage(
        title: "My home page",
      ),
    );
  }
}
