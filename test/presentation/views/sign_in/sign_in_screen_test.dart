import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:olearis_test_task/domain/services/navigation_service.dart';
import 'package:olearis_test_task/presentation/views/sign_in/sign_in_screen.dart';
import 'package:olearis_test_task/presentation/views/sign_in/sign_in_view_model.dart';
import 'package:olearis_test_task/presentation/widgets/primary_button.dart';

import 'sign_in_screen_test.mocks.dart';
import 'sign_in_view_model_test.mocks.dart';

// Create mock classes for dependencies
@GenerateNiceMocks([MockSpec<SignInViewModel>()])
void main() {
  group('SignInScreen Tests', () {
    late SignInViewModel mockViewModel;

    setUpAll(() {
      final sl = GetIt.instance;
      mockViewModel = MockSignInViewModel();
      sl.registerSingleton<NavigationService>(MockNavigationService());
    });

    testWidgets('Renders the SignInScreen correctly',
        (WidgetTester tester) async {
      // Build our widget with the mocked ViewModel.
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            Provider<SignInViewModel>((ref) => mockViewModel),
          ],
          child: const MaterialApp(home: SignInScreen()),
        ),
      );

      // Verify that the app bar title is displayed.
      expect(find.text('Sign In'), findsOneWidget);

      // Verify that the login and password text fields are displayed.
      expect(find.byType(TextField), findsNWidgets(2));

      // Verify that the PrimaryButton is displayed.
      expect(find.byType(PrimaryButton), findsOneWidget);
    });
  });
}
