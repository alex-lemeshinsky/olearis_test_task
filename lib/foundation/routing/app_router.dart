import 'package:auto_route/auto_route.dart';
import 'package:olearis_test_task/presentation/views/sign_in/sign_in_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SignInScreenRoute.page, initial: true),
      ];
}
