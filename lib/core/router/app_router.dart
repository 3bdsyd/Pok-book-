import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ElementaryRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: DetailsPokemonRoute.page),
      ];
}
