part of 'app_bloc.dart';

enum AppStatus { authenticated, unauthenticated }

class AppState extends Equatable {
  final AppStatus status;
  final User user;
  const AppState._({required this.status, this.user = User.empty});
  @override
  List<Object?> get props => [];
}
