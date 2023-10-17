import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olearis_test_task/foundation/assets/assets.dart';
import 'package:olearis_test_task/foundation/localizations/localizations.dart';
import 'package:olearis_test_task/presentation/views/home/home_view_model.dart';
import 'package:olearis_test_task/presentation/widgets/grid_item.dart';

@RoutePage(name: "HomeScreenRoute")
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        title: const Text(LocalizationStrings.markupTest),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: ref.read(homeProvider.notifier).removeItem,
            icon: const Icon(Icons.remove),
          ),
          IconButton(
            onPressed: ref.read(homeProvider.notifier).addItem,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Scrollbar(
        child: CustomScrollView(
          reverse: true,
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: isLandscape ? 52.0 : 12.0,
              ),
              sliver: SliverToBoxAdapter(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 4,
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 12.0,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: ref
                      .watch(homeProvider)
                      .items
                      .map((item) => GridItem(title: item))
                      .toList(),
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(30.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: SvgPicture.asset(
                    Assets.logo,
                    width: 375.0,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
