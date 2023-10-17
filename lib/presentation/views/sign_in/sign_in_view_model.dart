import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:olearis_test_task/application/providers/initializer.dart';
import 'package:olearis_test_task/domain/services/navigation_service.dart';
import 'package:olearis_test_task/foundation/routing/app_router.dart';
import 'package:olearis_test_task/foundation/utils/validator.dart';
import 'package:olearis_test_task/presentation/views/sign_in/sign_in_view_state.dart';

final signInProvider = StateNotifierProvider<SignInViewModel, SignInViewState>(
  (ref) => SignInViewModel(injector<NavigationService>()),
  name: "signInProvider",
);

class SignInViewModel extends StateNotifier<SignInViewState> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  final NavigationService _navigationService;

  SignInViewModel(this._navigationService) : super(SignInViewState.initial()) {
    loginController.addListener(loginControllerListener);
    passwordController.addListener(passwordControllerListener);
  }

  void loginControllerListener() {
    state = state.copyWith(
      loginValid: Validator.validateLogin(loginController.text),
    );
  }

  void passwordControllerListener() {
    state = state.copyWith(
      passwordValid: Validator.validatePassword(passwordController.text),
    );
  }

  Future<void> login() async {
    state = state.copyWith(loading: true);
    await Future.delayed(const Duration(seconds: 1));
    state = state.copyWith(loading: false);
    await _navigationService.pushHomeScreen();
  }

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
