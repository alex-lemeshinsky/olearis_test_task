import 'package:flutter_test/flutter_test.dart';
import 'package:olearis_test_task/foundation/utils/validator.dart';

void main() {
  group('Validator Tests', () {
    test('validateLogin should return true for a non-empty string', () {
      final result = Validator.validateLogin('username');
      expect(result, true);
    });

    test('validateLogin should return false for an empty string', () {
      final result = Validator.validateLogin('');
      expect(result, false);
    });

    test('validatePassword should return true for a non-empty string', () {
      final result = Validator.validatePassword('password');
      expect(result, true);
    });

    test('validatePassword should return false for an empty string', () {
      final result = Validator.validatePassword('');
      expect(result, false);
    });
  });
}
