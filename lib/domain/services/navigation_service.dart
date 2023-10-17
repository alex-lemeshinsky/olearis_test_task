import 'package:olearis_test_task/foundation/routing/app_router.dart';

/// {@category Core}
/// {@subCategory Domain}
///
/// Service used to handle navigation in the app
class NavigationService {
  final AppRouter _appRouter;

  NavigationService(this._appRouter);

  Future<void> pushHomeScreen() {
    return _appRouter.root.push(const HomeScreenRoute());
  }
}
