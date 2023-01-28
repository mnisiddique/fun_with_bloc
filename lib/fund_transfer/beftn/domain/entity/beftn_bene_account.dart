import 'package:equatable/equatable.dart';
import 'package:fun_with_bloc/app/error/missing_response_value_error.dart';
import 'package:fun_with_bloc/fund_transfer/core/domain/entity/to_account.dart';

abstract class ToBeftnBeneAccountEntity extends ToBankAccountEntity {
  String get beneShortName;
  String get toBankName;
}

class BeftnBeneAccountEntity extends Equatable
    implements ToBeftnBeneAccountEntity {
  final String? beneficiaryOid;
  final String? description;
  final String? shortName;
  final String? beneficiaryAccountNo;
  final String? accountTitle;
  final String? currency;
  final String? mobileNo;
  final String? email;
  final String? ibUserOid;
  final String? beneficiaryType;
  final String? routingNumber;
  final String? bankName;
  final String? bankOid;
  final String? district;
  final String? branchName;
  final String? branchCode;
  final String? districtCode;
  final String? imagePath;

  const BeftnBeneAccountEntity({
    required this.beneficiaryOid,
    required this.description,
    required this.shortName,
    required this.beneficiaryAccountNo,
    required this.accountTitle,
    required this.currency,
    required this.mobileNo,
    required this.email,
    required this.ibUserOid,
    required this.beneficiaryType,
    required this.routingNumber,
    required this.bankName,
    required this.bankOid,
    required this.district,
    required this.branchName,
    required this.branchCode,
    required this.districtCode,
    required this.imagePath,
  });

  @override
  List<Object?> get props => [
        beneficiaryOid,
        description,
        shortName,
        beneficiaryAccountNo,
        accountTitle,
        currency,
        mobileNo,
        email,
        ibUserOid,
        beneficiaryType,
        routingNumber,
        bankName,
        bankOid,
        district,
        branchName,
        branchCode,
        districtCode,
        imagePath,
      ];

  @override
  String get beneShortName => shortName ?? kUnknown;

  @override
  String get toAccountTitle => accountTitle ?? kUnknown;

  @override
  String get toAccountNo =>
      beneficiaryAccountNo ?? (throw MissingResponseValueError("toAccountNo"));

  @override
  String get toBankId =>
      bankOid ?? (throw MissingResponseValueError("branchName"));

  @override
  String get toBankName =>
      bankName ?? (throw MissingResponseValueError("branchName"));
}
