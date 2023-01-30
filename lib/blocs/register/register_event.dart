part of 'register_bloc.dart';

// @immutable
abstract class RegisterEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class RegisterPressed extends RegisterEvent{
  final String? phoneNumber;
  final Function onSuccess;
  RegisterPressed(this.phoneNumber, this.onSuccess);
  @override
  // TODO: implement props
  List<Object?> get props => [phoneNumber,onSuccess];
}