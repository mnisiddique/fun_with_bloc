import 'package:flutter/material.dart';
import 'package:flutter/src/material/dialog.dart';
import 'package:fun_with_bloc/app/dialog/app_dialog.dart';
import 'package:fun_with_bloc/app/res/label_index.dart';

import '../../../app/res/style_index.dart';
import '../../common_widget_index.dart';

class WillPopScopeAlert extends AppAlert {
  WillPopScopeAlert() {
    config = config.copyWith(barrierDismissible: false);
  }
  @override
  AlertDialog build() {
    return const AlertDialog(
      title: Text(AlertLabelRes.kLabelAreYoySure),
      content: Text(AlertLabelRes.kLabelWantToGoBack),
      titleTextStyle: AlertStyleRes.titleStyle,
      contentTextStyle: AlertStyleRes.contentStyle,
      contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 16.0),
      titlePadding: EdgeInsets.only(left: 16.0, top: 20.0),
      actions: [
        NegativeActionButton(text: ButtonLabelRes.kLabelCancel),
        PositiveActionButton(text: ButtonLabelRes.kLabelOK),
      ],
    );
  }
}
