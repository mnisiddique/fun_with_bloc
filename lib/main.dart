import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/dependency/dependency.dart';
import 'package:fun_with_bloc/app/navigation/index.dart';

void main() {
  Dependency.initDependency();
  runApp(const MyApp(
    routeGen: RouteGenerator(),
  ));
}

class MyApp extends StatelessWidget {
  final RouteGenerator routeGen;
  const MyApp({Key? key, required this.routeGen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: routeGen.generateRoute,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
