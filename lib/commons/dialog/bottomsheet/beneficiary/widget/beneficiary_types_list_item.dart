import 'package:flutter/material.dart';
import 'package:fun_with_bloc/app/res/style_res/alert_style_res.dart';
import 'package:fun_with_bloc/commons/dialog/bottomsheet/beneficiary/view_model/beneficiary_type.dart';

class BeneficiaryTypesListItem extends StatelessWidget {
  final BeneficiaryType beneficiaryType;

  const BeneficiaryTypesListItem({super.key, required this.beneficiaryType});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(beneficiaryType.icon),
      title: Text(beneficiaryType.type, style: AlertStyleRes.contentStyle),
      onTap: () => Navigator.of(context).pop(beneficiaryType),
    );
  }
}
