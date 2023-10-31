import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashViewRoute.page,
        ),
        AutoRoute(page: OnboardingViewRoute.page),
        AutoRoute( page: SignInViewRoute.page),
        AutoRoute(page: SignUpViewRoute.page),
        AutoRoute(initial: true,page: ProfileTypeViewRoute.page),
      ];
}
