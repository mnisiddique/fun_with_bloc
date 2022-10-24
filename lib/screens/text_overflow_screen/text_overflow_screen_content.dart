import 'package:flutter/material.dart';
import 'package:fun_with_bloc/screens/text_overflow_screen/widget/text_overflow_screen_body.dart';

class TextWidgetPixelOverflowScreenContent extends StatelessWidget {
  final String title;

  const TextWidgetPixelOverflowScreenContent({Key? key, required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const TextOverflowScreenBody(),
    );
  }
}
