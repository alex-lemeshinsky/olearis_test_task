// Mocks generated by Mockito 5.4.2 from annotations
// in olearis_test_task/test/presentation/views/sign_in/sign_in_screen_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:flutter/material.dart' as _i2;
import 'package:flutter_riverpod/flutter_riverpod.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:olearis_test_task/presentation/views/sign_in/sign_in_view_model.dart'
    as _i4;
import 'package:olearis_test_task/presentation/views/sign_in/sign_in_view_state.dart'
    as _i3;
import 'package:state_notifier/state_notifier.dart' as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTextEditingController_0 extends _i1.SmartFake
    implements _i2.TextEditingController {
  _FakeTextEditingController_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSignInViewState_1 extends _i1.SmartFake
    implements _i3.SignInViewState {
  _FakeSignInViewState_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SignInViewModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockSignInViewModel extends _i1.Mock implements _i4.SignInViewModel {
  @override
  _i2.TextEditingController get loginController => (super.noSuchMethod(
        Invocation.getter(#loginController),
        returnValue: _FakeTextEditingController_0(
          this,
          Invocation.getter(#loginController),
        ),
        returnValueForMissingStub: _FakeTextEditingController_0(
          this,
          Invocation.getter(#loginController),
        ),
      ) as _i2.TextEditingController);

  @override
  _i2.TextEditingController get passwordController => (super.noSuchMethod(
        Invocation.getter(#passwordController),
        returnValue: _FakeTextEditingController_0(
          this,
          Invocation.getter(#passwordController),
        ),
        returnValueForMissingStub: _FakeTextEditingController_0(
          this,
          Invocation.getter(#passwordController),
        ),
      ) as _i2.TextEditingController);

  @override
  set onError(_i5.ErrorListener? _onError) => super.noSuchMethod(
        Invocation.setter(
          #onError,
          _onError,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get mounted => (super.noSuchMethod(
        Invocation.getter(#mounted),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i6.Stream<_i3.SignInViewState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i6.Stream<_i3.SignInViewState>.empty(),
        returnValueForMissingStub: _i6.Stream<_i3.SignInViewState>.empty(),
      ) as _i6.Stream<_i3.SignInViewState>);

  @override
  _i3.SignInViewState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeSignInViewState_1(
          this,
          Invocation.getter(#state),
        ),
        returnValueForMissingStub: _FakeSignInViewState_1(
          this,
          Invocation.getter(#state),
        ),
      ) as _i3.SignInViewState);

  @override
  set state(_i3.SignInViewState? value) => super.noSuchMethod(
        Invocation.setter(
          #state,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i3.SignInViewState get debugState => (super.noSuchMethod(
        Invocation.getter(#debugState),
        returnValue: _FakeSignInViewState_1(
          this,
          Invocation.getter(#debugState),
        ),
        returnValueForMissingStub: _FakeSignInViewState_1(
          this,
          Invocation.getter(#debugState),
        ),
      ) as _i3.SignInViewState);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void loginControllerListener() => super.noSuchMethod(
        Invocation.method(
          #loginControllerListener,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void passwordControllerListener() => super.noSuchMethod(
        Invocation.method(
          #passwordControllerListener,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<void> login() => (super.noSuchMethod(
        Invocation.method(
          #login,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool updateShouldNotify(
    _i3.SignInViewState? old,
    _i3.SignInViewState? current,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateShouldNotify,
          [
            old,
            current,
          ],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i5.RemoveListener addListener(
    _i7.Listener<_i3.SignInViewState>? listener, {
    bool? fireImmediately = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
          {#fireImmediately: fireImmediately},
        ),
        returnValue: () {},
        returnValueForMissingStub: () {},
      ) as _i5.RemoveListener);
}