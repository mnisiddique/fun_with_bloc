import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/dependency/dependency.dart';
import 'package:fun_with_bloc/app/route_config.dart';

void main() {
  Dependency.initDependency();
  runApp(const MyApp(
    config: RouteConfig(),
  ));
}

class MyApp extends StatelessWidget {
  final RouteConfig config;
  const MyApp({Key? key, required this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: config.onGenerateRoute,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
