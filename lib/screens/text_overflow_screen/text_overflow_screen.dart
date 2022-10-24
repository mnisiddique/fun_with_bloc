import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/navigation/screen.dart';
import 'package:fun_with_bloc/app/res/label_res/index.dart';
import 'package:fun_with_bloc/screens/text_overflow_screen/text_overflow_screen_content.dart';

class TextWidgetPixelOverflowScreen extends PlainScreen {
  @override
  Widget build(RouteSettings settings) {
    return const TextWidgetPixelOverflowScreenContent(
      title: AppBarLabelRes.kTextWidgetPixelOverflowScreenTitle,
    );
  }
}
