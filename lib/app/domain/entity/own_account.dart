import 'package:equatable/equatable.dart';
import 'package:fun_with_bloc/app/error/missing_response_value_error.dart';
import 'package:fun_with_bloc/app/res/app_constant.dart';
import 'package:fun_with_bloc/fund_transfer/own/domain/entity/to_own_account.dart';

class OwnAccountResponseEntity {
  late final List<OwnAccountEntity> ownAccounts;
}

class OwnAccountEntity extends Equatable implements ToOwnBankAccount {
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

  @override
  String get toAccountBranchName =>
      branchName ?? (throw MissingResponseValueError("branchName"));

  @override
  String get toAccountId =>
      accountId ?? (throw MissingResponseValueError("accountId"));

  @override
  String get toAccountNo =>
      accountNo ?? (throw MissingResponseValueError("accountNo"));

  @override
  String get toAccountProductName =>
      productName ?? (throw MissingResponseValueError("productName"));

  @override
  String get toAccountTitle =>
      (throw MissingResponseValueError("toAccountTitle"));

  @override
  String get toAccountWorkingBalance =>
      workingBalance?.toString() ??
      (throw MissingResponseValueError("workingBalance"));

  @override
  String get toBankId => AppConstants.bankId;
}

const OwnAccountEntity fakeOwn = OwnAccountEntity(
  accountId: "accountId",
  accountNo: "020256",
  branchName: "Noakhali",
  accountTitle: "Samsu Miah",
  productCode: "productCode",
  productName: "FDR account",
  branchCode: "branchCode",
  workingBalance: 1000.00,
  balanceDateTime: "balanceDateTime",
  currency: "BDT",
  status: "status",
  cbsAccountStatus: "cbsAccountStatus",
);
