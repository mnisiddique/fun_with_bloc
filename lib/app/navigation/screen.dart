import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BlocProviderList {
  List<BlocProvider> get elements;
}

class ScreenMultiBlocProvider extends MultiBlocProvider {
  final BlocProviderList blocProviderList;
  final Widget child;

  ScreenMultiBlocProvider(
      {Key? key, required this.blocProviderList, required this.child})
      : super(key: key, providers: blocProviderList.elements, child: child);
}

abstract class Screen<T extends Widget> {
  ScreenConfig screenConfig = ScreenConfig();
  T build(RouteSettings settings);
}

abstract class MultiBlocProviderScreen extends Screen<ScreenMultiBlocProvider> {
}

abstract class PlainScreen extends Screen<Widget> {}

class ScreenConfig {
  final bool fullscreenDialog;
  final bool maintainState;

  ScreenConfig({
    this.fullscreenDialog = false,
    this.maintainState = true,
  });

  ScreenConfig copyWith({
    bool? fullscreenDialog,
    bool? maintainState,
  }) {
    return ScreenConfig(
      fullscreenDialog: fullscreenDialog ?? this.fullscreenDialog,
      maintainState: maintainState ?? this.maintainState,
    );
  }
}
