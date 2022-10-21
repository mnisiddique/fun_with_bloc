import 'package:flutter/material.dart';
import 'package:fun_with_bloc/commons/dialog/bottomsheet/beneficiary/view_model/beneficiary_type.dart';
import 'package:fun_with_bloc/commons/dialog/bottomsheet/beneficiary/widget/beneficiary_types_list_item.dart';

class BeneficiayTypesListView extends StatelessWidget {
  final BeneficiaryTypeData data;

  BeneficiayTypesListView({super.key}) : data = beneficiaryTypes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.beneTypes.length,
      shrinkWrap: true,
      itemBuilder: (ctx, index) =>
          BeneficiaryTypesListItem(beneficiaryType: data.beneTypes[index]),
    );
  }
}
