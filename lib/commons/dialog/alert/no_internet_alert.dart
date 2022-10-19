import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/dialog/app_dialog.dart';
import 'package:fun_with_bloc/app/res/label_index.dart';
import 'package:fun_with_bloc/app/res/style_index.dart';
import 'package:fun_with_bloc/commons/widget/single_action_button.dart';

class NoInterNetAlert extends AppAlert {
  @override
  AlertDialog build() {
    return const AlertDialog(
      title: Text(AlertLabelRes.kLabelAlert),
      content: Text(AlertLabelRes.kLabelNoInternet),
      titleTextStyle: AlertStyleRes.titleStyle,
      contentTextStyle: AlertStyleRes.contentStyle,
      contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 16.0),
      titlePadding: EdgeInsets.only(left: 16.0, top: 20.0),
      actions: [
        SingleActionButton(
          text: ButtonLabelRes.kLabelExit,
        )
      ],
    );
  }
}
