import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/dialog/app_dialog.dart';
import 'package:fun_with_bloc/app/res/label_res/index.dart';
import 'package:fun_with_bloc/app/res/style_res/index.dart';

import '../../widget/index.dart';

class BooleanDecisionAlert extends AppAlert {
  final String negativeButtonTitle;
  final String positiveButtonTitle;
  final String alertTitle;
  final String alertMsg;

  BooleanDecisionAlert({
    required this.alertTitle,
    required this.alertMsg,
    this.negativeButtonTitle = ButtonLabelRes.kLabelCancel,
    this.positiveButtonTitle = ButtonLabelRes.kLabelOK,
  });
  @override
  AlertDialog build() {
    return AlertDialog(
      title: Text(alertTitle),
      content: Text(alertMsg),
      titleTextStyle: AlertStyleRes.titleStyle,
      contentTextStyle: AlertStyleRes.contentStyle,
      contentPadding: const EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 16.0),
      titlePadding: const EdgeInsets.only(left: 16.0, top: 20.0),
      actions: [
        NegativeActionButton(text: negativeButtonTitle),
        PositiveActionButton(text: positiveButtonTitle),
      ],
    );
  }
}
