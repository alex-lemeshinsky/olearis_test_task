import 'package:injectable/injectable.dart';
import 'package:olearis_test_task/foundation/routing/app_router.dart';

@module
abstract class CoreModule {
  @singleton
  AppRouter appRouter() => AppRouter();
}
