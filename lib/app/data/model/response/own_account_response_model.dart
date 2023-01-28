import 'package:fun_with_bloc/app/domain/entity/own_account.dart';

class OwnAccountResponseModel extends OwnAccountEntity {
  const OwnAccountResponseModel({
    required super.accountId,
    required super.accountNo,
    required super.branchName,
    required super.accountTitle,
    required super.productCode,
    required super.productName,
    required super.branchCode,
    required super.workingBalance,
    required super.balanceDateTime,
    required super.currency,
    required super.status,
    required super.cbsAccountStatus,
  });

  factory OwnAccountResponseModel.fromMap(Map<String, dynamic> map) {
    return OwnAccountResponseModel(
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
}
