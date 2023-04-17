import 'package:auto_route/auto_route.dart';
import 'package:riverpod_refresh/services/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          children: [
            AutoRoute(
              page: UsersRouter.page,
              children: [
                AutoRoute(page: UsersRoute.page, path: ''),
                AutoRoute(page: UserDetailRoute.page),
              ],
            ),
            AutoRoute(
              page: PostsRouter.page,
              children: [
                AutoRoute(page: PostsRoute.page, path: ''),
                AutoRoute(page: PostDetailRoute.page),
              ],
            ),
            AutoRoute(page: PhotosRoute.page),
           
          ],
        ),
      ];
}

@RoutePage(name: 'UsersRouter')
class UsersRouterPage extends AutoRouter {
  const UsersRouterPage({super.key});
}

@RoutePage(name: 'PostsRouter')
class PostsRouterPage extends AutoRouter {
  const PostsRouterPage({super.key});
}
