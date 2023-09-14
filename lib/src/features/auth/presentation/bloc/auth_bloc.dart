import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const InitialState()) {
    on<InitialApp>(_handleInitialApp);
    on<LoginPressed>(_handleLoginPressed);
  }

  FutureOr<void> _handleInitialApp(InitialApp event, Emitter<AuthState> emit) {
    emit(const UnauthenticatedState());
  }

  FutureOr<void> _handleLoginPressed(
      LoginPressed event, Emitter<AuthState> emit) {
    emit(const AuthenticatedState());
  }
}
