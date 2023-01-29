import 'package:fun_with_bloc/app/domain/entity/own_account.dart';
import 'package:fun_with_bloc/app/res/app_constant.dart';
import 'package:fun_with_bloc/fund_transfer/core/domain/entity/to_account.dart';

class PreprocessRequestEntity<T extends ToAccountEntity> {
  final OwnAccountEntity fromAccount;
  final T toAccount;
  final String currency;
  final String amount;
  final String remarks;
  final String otpMethod;
  final String otpAutoReadSignature;

  PreprocessRequestEntity({
    required this.fromAccount,
    required this.toAccount,
    required this.currency,
    required this.amount,
    required this.remarks,
    this.otpMethod = "sms",
    this.otpAutoReadSignature = AppConstants.kAppSignature,
  });
}
