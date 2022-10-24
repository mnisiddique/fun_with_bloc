import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/res/style_res/index.dart';

class PositiveActionButton extends StatelessWidget {
  final String text;
  const PositiveActionButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: const Color(0xff0C5F20),
      child: Text(
        text,
        style: ButtonStyleRes.positiveLabelStyle,
      ),
      onPressed: () => Navigator.of(context).pop(true),
    );
  }
}
