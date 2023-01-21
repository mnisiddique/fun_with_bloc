abstract class NetworkRequestState {}

class NetworkRequestInitial extends NetworkRequestState {}

class NetworkRequestLoading extends NetworkRequestState {
  final String message;

  NetworkRequestLoading(this.message);
}

class NetworkRequestFailure extends NetworkRequestState {
  final Object failure;
  final String failureSource;
  final StackTrace stackTrace;

  NetworkRequestFailure(
    this.failure,
    this.stackTrace, {
    this.failureSource = "",
  });
}
