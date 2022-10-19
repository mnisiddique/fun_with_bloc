import 'package:flutter/material.dart';

class AlertConfig {
  final bool barrierDismissible;
  final Color? barrierColor;
  final String? barrierLabel;
  final bool useSafeArea;
  final bool useRootNavigator;
  final RouteSettings? routeSettings;
  final Offset? anchorPoint;

  AlertConfig({
    this.barrierDismissible = true,
    this.barrierColor = Colors.black54,
    this.barrierLabel,
    this.useSafeArea = true,
    this.useRootNavigator = true,
    this.routeSettings,
    this.anchorPoint,
  });

  AlertConfig copyWith({
    bool? barrierDismissible,
    Color? barrierColor,
    String? barrierLabel,
    bool? useSafeArea,
    bool? useRootNavigator,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
  }) {
    return AlertConfig(
      barrierDismissible: barrierDismissible ?? this.barrierDismissible,
      barrierColor: barrierColor ?? this.barrierColor,
      barrierLabel: barrierLabel ?? this.barrierLabel,
      useSafeArea: useSafeArea ?? this.useSafeArea,
      useRootNavigator: useRootNavigator ?? this.useRootNavigator,
      routeSettings: routeSettings ?? this.routeSettings,
    );
  }
}

class BottomSheetConfig {
  final Color backgroundColor;
  final double? elevation;
  final ShapeBorder? shape;
  final Clip? clipBehavior;
  final BoxConstraints? constraints;
  final Color? barrierColor;
  final bool isScrollControlled;
  final bool useRootNavigator;
  final bool isDismissible;
  final bool enableDrag;
  final RouteSettings? routeSettings;
  final AnimationController? transitionAnimationController;
  final Offset? anchorPoint;

  BottomSheetConfig({
    this.backgroundColor = Colors.white,
    this.elevation,
    this.shape,
    this.clipBehavior,
    this.constraints,
    this.barrierColor,
    this.isScrollControlled = false,
    this.useRootNavigator = false,
    this.isDismissible = true,
    this.enableDrag = false,
    this.routeSettings,
    this.transitionAnimationController,
    this.anchorPoint,
  });

  BottomSheetConfig copyWith({
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool? isScrollControlled,
    bool? useRootNavigator,
    bool? isDismissible,
    bool? enableDrag,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
  }) {
    return BottomSheetConfig(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      elevation: elevation ?? this.elevation,
      shape: shape ?? this.shape,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      constraints: constraints ?? this.constraints,
      barrierColor: barrierColor ?? this.barrierColor,
      isScrollControlled: isScrollControlled ?? this.isScrollControlled,
      useRootNavigator: useRootNavigator ?? this.useRootNavigator,
      isDismissible: isDismissible ?? this.isDismissible,
      enableDrag: enableDrag ?? this.enableDrag,
      routeSettings: routeSettings ?? this.routeSettings,
      transitionAnimationController:
          transitionAnimationController ?? this.transitionAnimationController,
      anchorPoint: anchorPoint ?? this.anchorPoint,
    );
  }
}
