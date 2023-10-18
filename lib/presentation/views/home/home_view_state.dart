import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'home_view_state.g.dart';

@CopyWith()
class HomeViewState with EquatableMixin {
  final List<String> items;

  HomeViewState({required this.items});

  HomeViewState.initial() : items = [];

  @override
  List<Object?> get props => [items];
}
