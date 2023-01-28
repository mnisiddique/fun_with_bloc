import 'package:fun_with_bloc/app/domain/entity/own_account.dart';
import 'package:fun_with_bloc/fund_transfer/core/domain/entity/to_account.dart';

abstract class ToOwnBankAccount extends ToBankAccount {
  String get toAccountId;
  String get toAccountBranchName;
  String get toAccountProductName;
  String get toAccountWorkingBalance;
}

class ToOwnBankAccountEntity extends OwnAccountEntity
    implements ToOwnBankAccount {
  const ToOwnBankAccountEntity({
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

  @override
  String get toAccountBranchName => branchName ?? (throw UnimplementedError());

  @override
  String get toAccountId => accountId ?? (throw UnimplementedError());

  @override
  String get toAccountProductName =>
      productName ?? (throw UnimplementedError());

  @override
  String get toAccountTitle => accountTitle ?? (throw UnimplementedError());

  @override
  String get toBankId => "010";

  @override
  String get toAccountNo => accountNo ?? (throw UnimplementedError());

  @override
  String get toAccountWorkingBalance =>
      workingBalance?.toString() ?? (throw UnimplementedError());
}

ToOwnBankAccountEntity toAcnt = const ToOwnBankAccountEntity(
  accountId: '',
  accountNo: '',
  accountTitle: '',
  balanceDateTime: '',
  branchCode: '',
  branchName: '',
  cbsAccountStatus: '',
  currency: '',
  productCode: '',
  productName: '',
  status: '',
  workingBalance: null,
);

class Request<T extends ToAccount> {
  final T toAcc;

  Request(this.toAcc);
}

void func() {
  Request<ToOwnBankAccountEntity> r = Request(toAcnt);
  r.toAcc.toAccountBranchName;
}
