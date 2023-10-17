import 'package:injectable/injectable.dart';
import 'package:olearis_test_task/domain/services/navigation_service.dart';
import 'package:olearis_test_task/foundation/routing/app_router.dart';

@module
abstract class DomainModule {
  /// Allow to inject [NavigationService]
  @singleton
  NavigationService navigationService(AppRouter appRouter) =>
      NavigationService(appRouter);
}
