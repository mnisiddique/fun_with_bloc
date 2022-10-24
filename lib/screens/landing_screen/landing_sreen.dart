import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/navigation/index.dart';
import 'package:fun_with_bloc/app/res/label_res/index.dart';

import 'package:fun_with_bloc/screens/landing_screen/landing_screen_content.dart';

class LandingScreen extends PlainScreen {
  @override
  Widget build(RouteSettings settings) {
    return const LandingScreenContent(
      title: AppBarLabelRes.kLandingScreenTitle,
    );
  }
}
