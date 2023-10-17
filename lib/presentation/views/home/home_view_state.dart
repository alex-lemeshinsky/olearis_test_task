import 'package:copy_with_extension/copy_with_extension.dart';

part 'home_view_state.g.dart';

@CopyWith()
class HomeViewState {
  final List<String> items;

  HomeViewState({required this.items});

  HomeViewState.initial() : items = [];
}
