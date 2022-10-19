import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/res/style_index.dart';

class NegativeActionButton extends StatelessWidget {
  final String text;
  const NegativeActionButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        text,
        style: ButtonStyleRes.negativeLabelStyle,
      ),
      onPressed: () => Navigator.of(context).pop(false),
    );
  }
}
