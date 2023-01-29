import 'dart:convert';

import 'package:fun_with_bloc/fund_transfer/core/domain/entity/preprocess_response_entity.dart';
import 'package:fun_with_bloc/fund_transfer/core/domain/entity/to_account.dart';

class IntraPreprocessResponseModel extends PreprocessResponseEntity {
  IntraPreprocessResponseModel.fromJson(String src) {
    final map = json.decode(src);
    userMessage = map["userMessage"] ?? kUnknown;
    transactionRequestRefId = map["transactionRequestRefId"] ?? kUnknown;
    otpValidTimeInSec = map["otpValidTimeInSec"] ?? kUnknown;
    fromAccountId = map["fromAccountId"] ?? kUnknown;
    fromAccount = map["fromAccountId"] ?? kUnknown;
    fromAccountTitle = map["fromAccountTitle"] ?? kUnknown;
    fromAccountBranchName = map["fromAccountBranchName"] ?? kUnknown;
    fromAccountBranchCode = map["fromAccountBranchCode"] ?? kUnknown;
    fromProductName = map["fromProductName"] ?? kUnknown;
    toAccount = map["toAccount"] ?? kUnknown;
    toAccountTitle = map["toAccountTitle"] ?? kUnknown;
    toAccountBranchName = map["toAccountBranchName"] ?? kUnknown;
    toAccountBranchCode = map["toAccountBranchCode"] ?? kUnknown;
    toProductName = map["toProductName"] ?? kUnknown;
    amount = map["amount"] ?? 0.0;
    vatAmount = map["vatAmount"] ?? 0.0;
    chargeAmount = map["chargeAmount"] ?? 0.0;
    grandTotal = map["grandTotal"] ?? 0.0;
    currency = map["currency"] ?? kUnknown;
    remarks = map["currency"] ?? kUnknown;
  }
}
