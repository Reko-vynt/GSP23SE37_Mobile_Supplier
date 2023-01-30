part of 'register_bloc.dart';

// @immutable
abstract class RegisterState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class RegisterInitial extends RegisterState {}

class Registering extends RegisterState{}

class RegisterSuccess extends RegisterState{
  final String verificationId;
  RegisterSuccess(this.verificationId);
  @override
  // TODO: implement props
  List<Object?> get props => [verificationId];
}

class RegisterFailed extends RegisterState{
  final String? phoneError;
  final String? errorMessage;

  RegisterFailed(this.phoneError, this.errorMessage);

  @override
  // TODO: implement props
  List<Object?> get props => [phoneError,errorMessage];
}