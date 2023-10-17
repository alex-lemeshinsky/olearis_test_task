import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import 'application/providers/initializer.dart';
import 'foundation/routing/app_router.dart';

void main() async {
  final GetIt getIt = initializeInjections();
  await getIt.allReady();
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = injector<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        title: 'Olearis',
        routerConfig: _appRouter.config(),
        theme: ThemeData(useMaterial3: false),
      ),
    );
  }
}
