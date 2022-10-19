import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/dialog/app_dialog.dart';

abstract class AlertService {
  Future<T?> showAlert<T>(
    BuildContext context,
    AppAlert alert,
  );
}

abstract class BottomSheetService {
  Future<T?> showBottomSheet<T>(
    BuildContext context,
    AppBottomSheet bottomSheet,
  );
}
