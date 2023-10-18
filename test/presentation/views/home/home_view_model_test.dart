import 'package:flutter_test/flutter_test.dart';
import 'package:olearis_test_task/presentation/views/home/home_view_model.dart';
import 'package:olearis_test_task/presentation/views/home/home_view_state.dart';

void main() {
  group('HomeViewModel Tests', () {
    test('Initial state should be correct', () {
      final viewModel = HomeViewModel();
      expect(viewModel.state, HomeViewState.initial());
    });

    test('removeItem should remove the last item', () {
      final viewModel = HomeViewModel();

      // Add some items to the state
      viewModel.addItem();
      viewModel.addItem();
      viewModel.addItem();

      // Call removeItem
      viewModel.removeItem();

      // Verify that the last item is removed
      expect(viewModel.state.items, ['Item 0', 'Item 1']);
    });

    test('addItem should add a new item', () {
      final viewModel = HomeViewModel();

      // Call addItem
      viewModel.addItem();

      // Verify that a new item is added
      expect(viewModel.state.items, ['Item 0']);
    });
  });
}
