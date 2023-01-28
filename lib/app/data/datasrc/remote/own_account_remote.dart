import 'dart:convert';

import 'package:fun_with_bloc/app/data/model/response/own_account_response_model.dart';
import 'package:fun_with_bloc/app/domain/entity/own_account.dart';

List<Map<String, dynamic>> resp = [
  {
    "accountId": "aa-bb--cc",
    "accountNo": "02001",
    "accountTitle": "t1",
    "accounproductCodetId": "6061",
    "productName": "Savings",
    "branchCode": "2020",
    "branchName": "3030",
    "workingBalance": 1000.00,
    "balanceDateTime": "22-22-22",
    "currency": "BDT",
    "status": "good",
    "cbsAccountStatus": "very good",
  },
  {
    "accountId": "aa-bb--cc",
    "accountNo": "02002",
    "accountTitle": "t2",
    "accounproductCodetId": "6061",
    "productName": "Savings",
    "branchCode": "2020",
    "branchName": "3030",
    "workingBalance": 1000.00,
    "balanceDateTime": "22-22-22",
    "currency": "BDT",
    "status": "good",
    "cbsAccountStatus": "very good",
  }
];

class OwnAccountRemoteSrc {
  OwnAccountResponseModel call() {
    Map<String, dynamic> fakeJson = <String, dynamic>{};
    fakeJson["data"] = resp;
    return OwnAccountResponseModel.fromJson(json.encode(fakeJson));
  }
}

class OwnAccountRepo {
  final OwnAccountRemoteSrc remote;

  OwnAccountRepo(this.remote);
  OwnAccountResponseEntity call() {
    return remote();
  }
}
