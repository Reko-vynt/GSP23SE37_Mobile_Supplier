part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object?> get props => [];
}

class LoginPressed extends LoginEvent {
  final String? phoneNumber;
  final Function onSuccess;
  const LoginPressed({required this.phoneNumber, required this.onSuccess});

  @override
  // TODO: implement props
  List<Object?> get props => [phoneNumber, onSuccess];
}
