import 'dart:convert';

import 'package:fun_with_bloc/fund_transfer/intra/domain/entity/intra_bene_account.dart';

class IntraBeneficiaryResponseModel extends IntraBeneficiaryResponseEntity {
  IntraBeneficiaryResponseModel.fromJson(String jsonString) {
    final jsonRespDecoded = json.decode(jsonString);
    intraBeneficiaries = <IntraBeneficiaryAccountModel>[];
    if (jsonRespDecoded['data'] != null) {
      jsonRespDecoded['data'].forEach((v) {
        intraBeneficiaries.add(IntraBeneficiaryAccountModel.fromMap(v));
      });
    }
  }
}

class IntraBeneficiaryAccountModel extends IntraBeneficiaryEntity {
  IntraBeneficiaryAccountModel.fromMap(Map<String, dynamic> map)
      : super(
          beneficiaryType: map["beneficiaryType"],
          beneficiaryId: map["beneficiaryOid"],
          ibUserId: map["ibUserOid"],
          shortName: map["shortName"],
          description: map["description"],
          beneficiaryAccountNo: map["beneficiaryAccountNo"],
          accountTitle: map["accountTitle"],
          productName: map["productName"],
          productCode: map["productCode"],
          currency: map["currency"],
          bankId: map["bankOid"],
          branchCode: map["branchCode"],
          bankName: map["bankName"],
          district: map["district"],
          districtCode: map["districtCode"],
          routingNumber: map["routingNumber"],
          branchName: map["branchName"],
          mobileNo: map["mobileNo"],
          email: map["email"],
          imagePath: map["imagePath"],
        );
}
