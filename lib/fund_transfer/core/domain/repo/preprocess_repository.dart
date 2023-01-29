import 'dart:developer';

import 'package:fun_with_bloc/fund_transfer/core/domain/entity/preprocess_request_entity.dart';
import 'package:fun_with_bloc/fund_transfer/core/domain/entity/to_account.dart';

abstract class PreprocessRepository<T extends ToAccountEntity> {
  void preprocess(PreprocessRequestEntity<T> requestEntity);
  // Future<PreprocessResponseEntity> preprocess(PreprocessRequestEntity<T> requestEntity);
}

class RepoImpl<T extends ToAccountEntity> extends PreprocessRepository<T> {
  @override
  void preprocess(PreprocessRequestEntity<T> requestEntity) {
    log("TypeOf To Account: ${requestEntity.toAccount.runtimeType}");
  }
}
