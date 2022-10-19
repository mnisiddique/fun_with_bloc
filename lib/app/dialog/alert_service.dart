import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/dependency/dependency.dart';
import 'package:fun_with_bloc/app/dialog/app_dialog.dart';
import 'package:fun_with_bloc/app/dialog/dialog_service.dart';

class AlertServiceImpl implements AlertService {
  bool isShowing = false;
  @override
  Future<T?> showAlert<T>(
    BuildContext context,
    AppAlert alert,
  ) {
    if (isShowing) {
      return Future.value();
    }
    isShowing = true;
    return showDialog(
      context: context,
      barrierDismissible: alert.config.barrierDismissible,
      barrierColor: alert.config.barrierColor,
      barrierLabel: alert.config.barrierLabel,
      useSafeArea: alert.config.useSafeArea,
      useRootNavigator: alert.config.useRootNavigator,
      routeSettings: alert.config.routeSettings,
      anchorPoint: alert.config.anchorPoint,
      builder: (BuildContext context) => alert.build(),
    ).then((value) {
      isShowing = false;
      return value;
    });
  }
}

AlertService get alertService => Dependency.sl<AlertServiceImpl>();
