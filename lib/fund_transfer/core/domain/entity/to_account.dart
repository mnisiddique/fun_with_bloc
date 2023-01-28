const String kUnknown = "Unknown";

abstract class ToAccountEntity {
  String get toAccountNo;
}

abstract class ToBankAccountEntity extends ToAccountEntity {
  String get toBankId;
  String get toAccountTitle;
}
