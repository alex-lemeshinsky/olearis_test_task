import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:olearis_test_task/presentation/views/home/home_screen.dart';
import 'package:olearis_test_task/presentation/widgets/grid_item.dart';

void main() {
  group(
    'HomeScreen Tests',
    () {
      testWidgets(
        'Renders the HomeScreen correctly',
        (WidgetTester tester) async {
          // Build our widget with the mocked ViewModel.
          await tester.pumpWidget(
            const ProviderScope(
              child: MaterialApp(home: HomeScreen()),
            ),
          );

          // Verify that the app bar title is displayed.
          expect(find.text('Markup Test'), findsOneWidget);

          // Verify that the 'Remove' and 'Add' buttons are displayed.
          expect(find.byIcon(Icons.remove), findsOneWidget);
          expect(find.byIcon(Icons.add), findsOneWidget);

          // Verify that the SvgPicture.asset widget is displayed.
          expect(find.byType(SvgPicture), findsOneWidget);
        },
      );

      testWidgets(
        "Item 0 is added and removed",
        (WidgetTester tester) async {
          await tester.pumpWidget(
            const ProviderScope(child: MaterialApp(home: HomeScreen())),
          );

          await tester.tap(find.byIcon(Icons.add));
          await tester.pump();

          expect(find.text("Item 0"), findsOneWidget);

          await tester.tap(find.byIcon(Icons.remove));
          await tester.pump();

          expect(find.byType(GridItem), findsNothing);
        },
      );
    },
  );
}
