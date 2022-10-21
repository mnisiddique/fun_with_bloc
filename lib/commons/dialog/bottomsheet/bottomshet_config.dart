import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/dialog/dialog_config.dart';

class BottomSheetConfigRes {
  BottomSheetConfigRes._inti();
  static final BottomSheetConfig roundedShapeWithControlledScrollingConfig =
      BottomSheetConfig(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
      ),
    ),
  );

  static final BottomSheetConfig roundedShapeConfig = BottomSheetConfig(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
      ),
    ),
  );
}
