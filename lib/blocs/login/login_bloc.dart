import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gsp23se37_mobile_supplier/models/api_response.dart';
import 'package:gsp23se37_mobile_supplier/models/user.dart';
import 'package:gsp23se37_mobile_supplier/models/validation_item.dart';
import 'package:gsp23se37_mobile_supplier/network/services/authentication_service.dart';
import 'package:gsp23se37_mobile_supplier/network/services/firebase_auth_service.dart';
import 'package:gsp23se37_mobile_supplier/utils/validations.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationService _authenticationService;
  final FirebaseAuthService _firebaseAuthService;
  LoginBloc(AuthenticationService authenticationService)
      : _authenticationService = authenticationService,_firebaseAuthService=FirebaseAuthService(),
        super(LoginInitial()) {
    on<LoginPressed>((event, emit) async {
      emit(Logining());
      ValidationItem phoneNumber = Validation.valPhoneNumber(event.phoneNumber);
      if (phoneNumber.error != null) {
        emit(LoginFailed(null, phoneNumber.error));
      } else {
        ApiResponse apiResponse = await _authenticationService.checkUser(
            phoneNumber: phoneNumber.value!);
        if (apiResponse.isSuccess!) {
          await _firebaseAuthService.verifyPhone(phoneNumber: event.phoneNumber!, onFailed: (String msg){
            emit(LoginFailed(null, msg));
          }, onSendCode: (String verificationId){
            emit(LoginSuccess(verificationId));
            event.onSuccess();
            emit(LoginInitial());
          });

        } else {
          emit(LoginFailed(apiResponse.message!, null));
        }
      }
    });
  }
}
