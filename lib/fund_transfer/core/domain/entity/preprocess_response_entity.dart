import 'package:equatable/equatable.dart';

class PreprocessResponseEntity extends Equatable {
  late final String userMessage;
  late final String transactionRequestRefId;
  late final String otpValidTimeInSec;
  late final String fromAccountId;
  late final String fromAccount;
  late final String fromAccountTitle;
  late final String fromAccountBranchName;
  late final String fromAccountBranchCode;
  late final String fromProductName;
  late final String toAccount;
  late final String toAccountTitle;
  late final String toAccountBranchName;
  late final String toAccountBranchCode;
  late final String toProductName;
  late final double amount;
  late final double vatAmount;
  late final double chargeAmount;
  late final double grandTotal;
  late final String currency;
  late final String remarks;

  @override
  List<Object?> get props => [
        userMessage,
        transactionRequestRefId,
        otpValidTimeInSec,
        fromAccountId,
        fromAccount,
        fromAccountTitle,
        fromAccountBranchName,
        fromAccountBranchCode,
        fromProductName,
        toAccount,
        toAccountTitle,
        toAccountBranchName,
        toAccountBranchCode,
        toProductName,
        amount,
        vatAmount,
        chargeAmount,
        grandTotal,
        currency,
        remarks,
      ];
}
