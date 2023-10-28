import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashViewRoute.page,
          initial: true,
        ),
        AutoRoute(page: OnboardingViewRoute.page),
      ];
}
