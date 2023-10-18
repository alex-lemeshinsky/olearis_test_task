import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'sign_in_view_state.g.dart';

@CopyWith()
class SignInViewState with EquatableMixin {
  final bool loading;
  final bool loginValid;
  final bool passwordValid;

  SignInViewState({
    required this.loading,
    required this.loginValid,
    required this.passwordValid,
  });

  SignInViewState.initial()
      : loading = false,
        loginValid = false,
        passwordValid = false;

  bool get credentialsAreValid => loginValid && passwordValid;

  @override
  List<Object?> get props => [loading, loginValid, passwordValid];
}
