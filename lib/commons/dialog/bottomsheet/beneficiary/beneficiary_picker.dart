import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/dialog/app_dialog.dart';
import 'package:fun_with_bloc/commons/dialog/bottomsheet/beneficiary/widget/beneficiary_types_listview.dart';
import 'package:fun_with_bloc/commons/dialog/bottomsheet/bottomshet_config.dart';

class BeneficiaryPickerBottomSheet extends AppBottomSheet {
  BeneficiaryPickerBottomSheet() {
    config = BottomSheetConfigRes.roundedShapeConfig;
  }

  @override
  Widget build() {
    return BeneficiayTypesListView();
  }
}
