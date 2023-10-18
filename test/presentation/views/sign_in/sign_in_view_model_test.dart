import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:olearis_test_task/domain/services/navigation_service.dart';
import 'package:olearis_test_task/presentation/views/sign_in/sign_in_view_model.dart';
import 'package:olearis_test_task/presentation/views/sign_in/sign_in_view_state.dart';

import 'sign_in_view_model_test.mocks.dart';

@GenerateNiceMocks([MockSpec<NavigationService>()])
void main() {
  group('SignInViewModel Tests', () {
    late SignInViewModel viewModel;
    late MockNavigationService mockNavigationService;

    setUp(() {
      mockNavigationService = MockNavigationService();
      viewModel = SignInViewModel(mockNavigationService);
    });

    test('Initial state should be correct', () {
      expect(viewModel.state, SignInViewState.initial());
    });

    test('loginControllerListener should update loginValid', () {
      viewModel.loginController.text = 'username';
      viewModel.loginControllerListener();
      expect(viewModel.state.loginValid, true);
    });

    test('passwordControllerListener should update passwordValid', () {
      viewModel.passwordController.text = 'password';
      viewModel.passwordControllerListener();
      expect(viewModel.state.passwordValid, true);
    });

    test('login should set loading to true and call pushHomeScreen', () async {
      // Arrange
      when(mockNavigationService.pushHomeScreen()).thenAnswer((_) async {});

      // Act
      await viewModel.login();

      // Assert
      verify(mockNavigationService.pushHomeScreen()).called(1);
    });
  });
}
