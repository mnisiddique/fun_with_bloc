import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun_with_bloc/commons/state/network_state.dart';

part 'user_info_state.dart';

const kUserInfoLoadingMessage = "userinfo is loading";

class UserInfoCubit extends Cubit<NetworkRequestState> {
  UserInfoCubit() : super(NetworkRequestInitial());

  Future<void> getUserInfo() async {
    emit(NetworkRequestLoading(kUserInfoLoadingMessage));
    try {
      await Future.delayed(const Duration(seconds: 2));
      emit(UserInfoLoaded());
    } catch (e, stackTrace) {
      emit(NetworkRequestFailure(e, stackTrace));
    }
  }
}
