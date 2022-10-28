import 'package:equatable/equatable.dart';

import 'package:vita_chek_v2/models/custom_error.dart';

enum SignupStatus {
  initial,
  submitting,
  success,
  error,
}

class SignupState extends Equatable {
  final SignupStatus signupStatus;
  final customError error;
  SignupState({
    required this.signupStatus,
    required this.error,
  });
  factory SignupState.initial() {
    return SignupState(
      signupStatus: SignupStatus.initial,
      error: customError(),
    );
  }
  @override
  List<Object> get props => [signupStatus, error];

  @override
  bool get stringify => true;
  SignupState copyWith({SignupStatus? signupStatus, customError? error}) {
    return SignupState(
      signupStatus: signupStatus ?? this.signupStatus,
      error: error ?? this.error,
    );
  }
}
