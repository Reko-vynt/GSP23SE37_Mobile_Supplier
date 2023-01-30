part of 'login_bloc.dart';

class LoginState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginInitial extends LoginState {}

class Logining extends LoginState {}

class LoginSuccess extends LoginState {
  final String verificationId;
  LoginSuccess(this.verificationId);
  @override
  // TODO: implement props
  List<Object?> get props => [verificationId];
}

class LoginFailed extends LoginState {
  final String? phoneError;
  final String? errorMessage;
  LoginFailed(this.errorMessage, this.phoneError);
  @override
  List<Object?> get props => [phoneError, errorMessage];
}
