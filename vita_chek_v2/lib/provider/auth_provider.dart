import 'package:flutter/material.dart';
import 'package:vita_chek_v2/provider/auth/auth_state.dart';
import 'package:vita_chek_v2/views/auth_repos.dart';
import 'package:firebase_auth/firebase_auth.dart' as fbAuth;

class AuthProvider with ChangeNotifier {
  AuthState _state = AuthState.unkown();
  AuthState get state => _state;

  final AuthRepository authRepository;
  AuthProvider({
    required this.authRepository,
  });
  void update(fbAuth.User? user) {
    if (user != null) {
      _state = _state.copyWith(
        authStatus: AuthStatus.authenticated,
        user: user,
      );
    } else {
      _state = _state.copyWith(
        authStatus: AuthStatus.unauthenticated,
      );
    }
    print('AuthState: $_state');
    notifyListeners();
  }

  void signout() async {
    await authRepository.signout();
  }
}
