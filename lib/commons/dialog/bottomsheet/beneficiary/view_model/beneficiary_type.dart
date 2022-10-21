import 'package:flutter/cupertino.dart';
import 'package:fun_with_bloc/commons/dialog/bottomsheet/beneficiary/view_model/data_src.dart';

class BeneficiaryType {
  late String type;
  late IconData icon;

  BeneficiaryType(this.type, this.icon);

  BeneficiaryType.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['icon'] = icon;
    return data;
  }
}

class BeneficiaryTypeData {
  final List<BeneficiaryType> beneTypes;

  BeneficiaryTypeData.fromSrc(List<Map<String, dynamic>> list)
      : beneTypes = _parse(list);

  static List<BeneficiaryType> _parse(List<Map<String, dynamic>> list) {
    List<BeneficiaryType> data = [];
    for (final Map<String, dynamic> mapItem in list) {
      data.add(BeneficiaryType.fromJson(mapItem));
    }
    return data;
  }
}

BeneficiaryTypeData get beneficiaryTypes =>
    BeneficiaryTypeData.fromSrc(dataSrc);
