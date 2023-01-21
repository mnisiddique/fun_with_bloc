import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun_with_bloc/commons/state/network_state.dart';

part 'account_info_state.dart';

class AccountInfoCubit extends Cubit<NetworkRequestState> {
  AccountInfoCubit() : super(NetworkRequestInitial());
}
