// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HomeViewStateCWProxy {
  HomeViewState items(List<String> items);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeViewState call({
    List<String>? items,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHomeViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHomeViewState.copyWith.fieldName(...)`
class _$HomeViewStateCWProxyImpl implements _$HomeViewStateCWProxy {
  const _$HomeViewStateCWProxyImpl(this._value);

  final HomeViewState _value;

  @override
  HomeViewState items(List<String> items) => this(items: items);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeViewState call({
    Object? items = const $CopyWithPlaceholder(),
  }) {
    return HomeViewState(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<String>,
    );
  }
}

extension $HomeViewStateCopyWith on HomeViewState {
  /// Returns a callable class that can be used as follows: `instanceOfHomeViewState.copyWith(...)` or like so:`instanceOfHomeViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HomeViewStateCWProxy get copyWith => _$HomeViewStateCWProxyImpl(this);
}
