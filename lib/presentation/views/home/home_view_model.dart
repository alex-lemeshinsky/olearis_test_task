import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:olearis_test_task/presentation/views/home/home_view_state.dart';

final homeProvider = StateNotifierProvider<HomeViewModel, HomeViewState>(
  (ref) => HomeViewModel(),
  name: "homeProvider",
);

class HomeViewModel extends StateNotifier<HomeViewState> {
  HomeViewModel() : super(HomeViewState.initial());

  void removeItem() {
    state = state.copyWith(items: state.items..removeLast());
  }

  void addItem() async {
    state =
        state.copyWith(items: state.items..add("Item ${state.items.length}"));
  }
}
