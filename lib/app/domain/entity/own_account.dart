import 'package:equatable/equatable.dart';

class OwnAccountEntity extends Equatable {
  final String? accountId;
  final String? accountNo;
  final String? branchName;
  final double? workingBalance;
  final String? currency;
  final String? accountTitle;
  final String? productCode;
  final String? productName;
  final String? branchCode;
  final String? balanceDateTime;
  final String? status;
  final String? cbsAccountStatus;
  const OwnAccountEntity({
    required this.accountId,
    required this.accountNo,
    required this.branchName,
    required this.accountTitle,
    required this.productCode,
    required this.productName,
    required this.branchCode,
    required this.workingBalance,
    required this.balanceDateTime,
    required this.currency,
    required this.status,
    required this.cbsAccountStatus,
  });

  @override
  List<Object?> get props => [
        accountId,
        accountNo,
        branchName,
        accountTitle,
        productCode,
        productName,
        branchCode,
        workingBalance,
        balanceDateTime,
        currency,
        status,
        cbsAccountStatus,
      ];
}
