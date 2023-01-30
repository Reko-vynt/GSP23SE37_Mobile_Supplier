import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gsp23se37_mobile_supplier/models/api_response.dart';
import 'package:gsp23se37_mobile_supplier/models/user.dart';
import 'package:gsp23se37_mobile_supplier/network/services/authentication_service.dart';
import 'package:gsp23se37_mobile_supplier/utils/user_shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthenticationService _authenticationService;
  AuthBloc(AuthenticationService authenticationService)
      : _authenticationService = authenticationService,
        super(AuthInitial()) {
    on<AppLoaded>((event, emit) async {
      emit(AuthLoading());
      try {
        await Future.delayed(
            const Duration(milliseconds: 500)); // a simulated delay
        User? user = await UserSharePre.getUser();
        if (user != null) {
          final ApiResponse apiResponse = await _authenticationService
              .refeshToken(token: user.token!, userID: user.userID);
          if (apiResponse.isSuccess!) {
            emit(AuthAuthenticated(user: apiResponse.dataResponse));
          } else {
            emit(AuthFailure(message: apiResponse.message!));
          }
        } else {
          emit(AuthNotAuthenticated());
        }
      } catch (e) {
        emit(AuthFailure(message: e.toString()));
      }
    });
    on<UserLoggedIn>(((event, emit) async {
      emit(AuthAuthenticated(user: event.user));
    }));
    on<UserLoggedOut>(((event, emit) async {
      User? user = await UserSharePre.getUser();
      if (user != null) {
        await _authenticationService.logOut(userID: user.userID);
      }
      emit(AuthNotAuthenticated());
    }));
  }
}
