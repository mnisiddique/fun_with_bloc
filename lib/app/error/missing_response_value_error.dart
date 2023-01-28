class MissingResponseValueError extends Error {
  final String? responseValueName;

  MissingResponseValueError(this.responseValueName);

  @override
  String toString() {
    return "${responseValueName ?? ""} is missing in response";
  }
}
