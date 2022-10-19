import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/dialog/dialog_config.dart';

abstract class _AppDialog<T extends Widget> {
  T build();
}

abstract class AppAlert implements _AppDialog<AlertDialog> {
  AlertConfig config = AlertConfig();
}

abstract class AppBottomSheet implements _AppDialog<Widget> {
  BottomSheetConfig config = BottomSheetConfig();
}
