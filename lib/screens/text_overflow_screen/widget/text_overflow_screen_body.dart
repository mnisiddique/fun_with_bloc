import 'package:flutter/material.dart';

class TextOverflowScreenBody extends StatelessWidget {
  const TextOverflowScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Flutter is a cross-platform framework that allows you to write iOS and Android apps using a single codebase.',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
