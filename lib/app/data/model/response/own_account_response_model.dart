import 'dart:convert';
import 'package:fun_with_bloc/app/domain/entity/own_account.dart';

class OwnAccountResponseModel extends OwnAccountResponseEntity {
  OwnAccountResponseModel.fromJson(String src) {
    final decodedJson = json.decode(src);
    ownAccounts = <OwnAccountModel>[];
    if (decodedJson['data'] != null) {
      decodedJson['data'].forEach((v) {
        ownAccounts.add(OwnAccountModel.fromMap(v));
      });
    }
  }
}

class OwnAccountModel extends OwnAccountEntity {
  OwnAccountModel.fromMap(Map<String, dynamic> map)
      : super(
          accountId: map['accountId'],
          accountNo: map['accountNo'],
          accountTitle: map['accountTitle'],
          productCode: map['productCode'],
          productName: map['productName'],
          branchCode: map['branchCode'],
          branchName: map['branchName'],
          workingBalance: map['workingBalance'],
          balanceDateTime: map['balanceDateTime'],
          currency: map['currency'],
          status: map['status'],
          cbsAccountStatus: map['cbsAccountStatus'],
        );
}
