import 'package:equatable/equatable.dart';

import 'package:vita_chek_v2/models/custom_error.dart';

enum SigninStatus {
  initial,
  submitting,
  success,
  error,
}

class SigninState extends Equatable {
  final SigninStatus signinStatus;
  final customError error;
  SigninState({
    required this.signinStatus,
    required this.error,
  });
  factory SigninState.initial() {
    return SigninState(
      signinStatus: SigninStatus.initial,
      error: customError(),
    );
  }
  @override
  List<Object> get props => [signinStatus, error];

  @override
  bool get stringify => true;
  SigninState copyWith({SigninStatus? signinStatus, customError? error}) {
    return SigninState(
      signinStatus: signinStatus ?? this.signinStatus,
      error: error ?? this.error,
    );
  }
}
