import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gsp23se37_mobile_supplier/models/user.dart';
import 'package:meta/meta.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc(super.initialState);
  // AppBloc() : super(AppInitial()) {
  //   on<AppEvent>((event, emit) {
  //     // TODO: implement event handler
  //   });
  // }
}
