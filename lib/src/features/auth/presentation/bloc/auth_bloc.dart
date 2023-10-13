import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/features/auth/domain/auth_exceptions.dart';
import 'package:travo_app/src/features/auth/domain/firebase_auth_provider.dart';
import 'package:travo_app/src/features/auth/domain/firestore_services.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/string_cvt.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  UserAccount? _user;
  AuthBloc() : super(const InitialState()) {
    _authService = FirebaseAuthService();
    _firestoreService = FirestoreService();

    on<InitialApp>(_handleInitialApp);
    on<LoginAccountEvent>(_handleLoginAccountEvent);
    on<SignUpEvent>(_handleSignUpEvent);
    on<ForgotPasswordEvent>(_handleForgotPasswordEvent);
    on<SaveAvatarEvent>(_handleSaveAvatarEvent);
    on<LogOutEvent>(_handleLogOutEvent);
  }

  final prefs = UserPrefs.instance;
  late FirebaseAuthService _authService;
  late FirestoreService _firestoreService;

  FutureOr<void> _handleInitialApp(InitialApp event, Emitter<AuthState> emit) {
    emit(const UnauthenticatedState());
  }

  FutureOr<void> _handleLoginAccountEvent(
      LoginAccountEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      _user = await _authService.logIn(event.email, event.password);
      if (_user != null) {
        _user = await _firestoreService.currentUser(_user!);
        if (_user!.id == '') {
          emit(const AuthState.error("Cannot load user data"));
        } else {
          _user?.avatar = await ImageCvt.networkImageToBase64(_user!.avatar) as String;
          prefs.setUser(_user!);
          emit(AuthState.authenticated(_user!));
        }
      } else {
        emit(const AuthState.error("Cannot login user"));
      }
    } on Exception catch (_) {
      emit(const AuthState.error("Email or password is incorrect"));
    }
  }

  FutureOr<void> _handleSignUpEvent(
      SignUpEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final uid = await _authService.signUp(
          email: event.email, password: event.password);
      if (uid != null) {
        _firestoreService.saveUser(UserAccount(
          id: uid,
          name: event.name,
          email: event.email,
          phone: event.phone,
          country: event.country,
          avatar: "",
        ));
        emit(const AuthState.signUpSuccess());
        emit(const AuthState.unauthenticated());
      }
    } on Exception catch (e) {
      if (e is WeakPasswordAuthException) {
        emit(const AuthState.error("The password provided is too weak."));
      } else if (e is EmailAlreadyInUseAuthException) {
        emit(const AuthState.error(
            "The account already exists for that email."));
      } else {
        emit(const AuthState.error("Something went wrong"));
      }
    }
  }

  FutureOr<void> _handleSaveAvatarEvent(SaveAvatarEvent event, Emitter<AuthState> emit) {
    emit(const AuthState.loading());
    _user?.avatar = event.avatar;
    UserPrefs.I.setUser(_user!);
    emit(AuthState.authenticated(_user!));
  }

  FutureOr<void> _handleLogOutEvent(LogOutEvent event, Emitter<AuthState> emit) {
    emit(const AuthState.loading());
    _authService.signOut();
    emit(const AuthState.unauthenticated());
  }
}

FutureOr<void> _handleForgotPasswordEvent(
    ForgotPasswordEvent event, Emitter<AuthState> emit) {
  emit(const AuthState.loading());
  emit(const AuthState.resetPasswordSuccess());
  emit(const AuthState.unauthenticated());
}
