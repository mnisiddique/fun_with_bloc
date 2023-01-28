abstract class ToAccount {
  String get toAccountNo;
}

abstract class ToBankAccount extends ToAccount {
  String get toBankId;
  String get toAccountTitle;
}


// Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'creditBankId': creditBankId,
//       'creditAccountNumber': creditAccountNumber,
//       'amount': amount,
//       'currency': currency,
//       'remarks': remarks,
//       'otpMethod': otpMethod,
//       'otpAutoReadSignature': otpAutoReadSignature,
//     };
//   }


// Map<String, String?> intraBankRequestBody() {
//     return {
//       "toBankId": toBankId,
//       "toAccount": toAccount.accountNo,
//       "amount": amount,
//       "currency": fromAccount.currency,
//       "otpMethod": otpMethod,
//       "remarks": remarks,
//       "otpAutoReadSignature": AppConstants.kAppSignature,
//     };
//   }


// Map<String, String?> ownBankRequestBody() {
//     return {
//       "toBankId": toBankId,
//       "toAccountId": toAccount.accountId,
//       "amount": amount,
//       "currency": fromAccount.currency,
//       "otpMethod": otpMethod,
//       "remarks": remarks,
//       "otpAutoReadSignature": AppConstants.kAppSignature,
//     };
//   }