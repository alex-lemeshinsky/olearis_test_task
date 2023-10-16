abstract class Validator {
  static bool validateLogin(String value) {
    return value.isNotEmpty;
  }

  static bool validatePassword(String value) {
    return value.isNotEmpty;
  }
}
