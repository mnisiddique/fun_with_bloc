import 'package:fun_with_bloc/fund_transfer/core/domain/entity/to_account.dart';

abstract class ToOwnBankAccount extends ToBankAccountEntity {
  String get toAccountId;
  String get toAccountBranchName;
  String get toAccountProductName;
  String get toAccountWorkingBalance;
}
