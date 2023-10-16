// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SignInViewStateCWProxy {
  SignInViewState loading(bool loading);

  SignInViewState loginValid(bool loginValid);

  SignInViewState passwordValid(bool passwordValid);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SignInViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SignInViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  SignInViewState call({
    bool? loading,
    bool? loginValid,
    bool? passwordValid,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSignInViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSignInViewState.copyWith.fieldName(...)`
class _$SignInViewStateCWProxyImpl implements _$SignInViewStateCWProxy {
  const _$SignInViewStateCWProxyImpl(this._value);

  final SignInViewState _value;

  @override
  SignInViewState loading(bool loading) => this(loading: loading);

  @override
  SignInViewState loginValid(bool loginValid) => this(loginValid: loginValid);

  @override
  SignInViewState passwordValid(bool passwordValid) =>
      this(passwordValid: passwordValid);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SignInViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SignInViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  SignInViewState call({
    Object? loading = const $CopyWithPlaceholder(),
    Object? loginValid = const $CopyWithPlaceholder(),
    Object? passwordValid = const $CopyWithPlaceholder(),
  }) {
    return SignInViewState(
      loading: loading == const $CopyWithPlaceholder() || loading == null
          ? _value.loading
          // ignore: cast_nullable_to_non_nullable
          : loading as bool,
      loginValid:
          loginValid == const $CopyWithPlaceholder() || loginValid == null
              ? _value.loginValid
              // ignore: cast_nullable_to_non_nullable
              : loginValid as bool,
      passwordValid:
          passwordValid == const $CopyWithPlaceholder() || passwordValid == null
              ? _value.passwordValid
              // ignore: cast_nullable_to_non_nullable
              : passwordValid as bool,
    );
  }
}

extension $SignInViewStateCopyWith on SignInViewState {
  /// Returns a callable class that can be used as follows: `instanceOfSignInViewState.copyWith(...)` or like so:`instanceOfSignInViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SignInViewStateCWProxy get copyWith => _$SignInViewStateCWProxyImpl(this);
}
