import 'package:equatable/equatable.dart';
import 'package:fun_with_bloc/app/error/missing_response_value_error.dart';
import 'package:fun_with_bloc/app/res/app_constant.dart';
import 'package:fun_with_bloc/fund_transfer/core/domain/entity/to_account.dart';

class IntraBeneficiaryResponseEntity {
  late final List<IntraBeneficiaryEntity> intraBeneficiaries;
}

abstract class ToIntraBeneficiaryAccount extends ToBankAccountEntity {
  String get beneShortName;
  String get toAccountBranchName;
}

class IntraBeneficiaryEntity extends Equatable
    implements ToIntraBeneficiaryAccount {
  final String? beneficiaryType;
  final String? beneficiaryId;
  final String? ibUserId;
  final String? shortName;
  final String? description;
  final String? beneficiaryAccountNo;
  final String? accountTitle;
  final String? productName;
  final String? productCode;
  final String? currency;
  final String? bankId;
  final String? bankName;
  final String? district;
  final String? districtCode;
  final String? routingNumber;
  final String? branchCode;
  final String? branchName;
  final String? mobileNo;
  final String? email;
  final String? imagePath;

  const IntraBeneficiaryEntity({
    required this.beneficiaryType,
    required this.beneficiaryId,
    required this.ibUserId,
    required this.shortName,
    required this.description,
    required this.beneficiaryAccountNo,
    required this.accountTitle,
    required this.productName,
    required this.productCode,
    required this.currency,
    required this.bankId,
    required this.bankName,
    required this.district,
    required this.districtCode,
    required this.routingNumber,
    required this.branchCode,
    required this.branchName,
    required this.mobileNo,
    required this.email,
    required this.imagePath,
  });

  @override
  List<Object?> get props => [
        beneficiaryType,
        beneficiaryId,
        ibUserId,
        shortName,
        description,
        beneficiaryAccountNo,
        accountTitle,
        productName,
        productCode,
        currency,
        bankId,
        bankName,
        district,
        districtCode,
        routingNumber,
        branchCode,
        branchName,
        mobileNo,
        email,
        imagePath
      ];

  @override
  String get beneShortName => shortName ?? kUnknown;

  @override
  String get toAccountTitle => accountTitle ?? kUnknown;

  @override
  String get toBankId => AppConstants.bankId;

  @override
  String get toAccountBranchName => branchName ?? kUnknown;

  @override
  String get toAccountNo =>
      beneficiaryAccountNo ??
      (throw MissingResponseValueError("beneficiaryAccountNo"));
}

const fakeIntraBankBene = IntraBeneficiaryEntity(
  accountTitle: 'Md. Nahidul Islam',
  bankId: '010',
  bankName: 'Agrani',
  beneficiaryAccountNo: '02003',
  beneficiaryId: 'beneId',
  beneficiaryType: 'bene Type',
  branchCode: 'branch Code',
  branchName: 'Barisal',
  currency: '',
  description: '',
  district: '',
  districtCode: '',
  email: '',
  ibUserId: '',
  imagePath: '',
  mobileNo: '',
  productCode: '',
  productName: '',
  routingNumber: '',
  shortName: 'Guddu',
);
