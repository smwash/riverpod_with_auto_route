// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:riverpod_refresh/models/post_mdl.dart' as _i10;
import 'package:riverpod_refresh/models/user_mdl.dart' as _i11;
import 'package:riverpod_refresh/screens/home_scrn.dart' as _i2;
import 'package:riverpod_refresh/screens/photos_scrn.dart' as _i3;
import 'package:riverpod_refresh/screens/posts_scrn.dart' as _i4;
import 'package:riverpod_refresh/screens/users_scrn.dart' as _i1;
import 'package:riverpod_refresh/services/router.dart' as _i5;
import 'package:riverpod_refresh/widgets/post/post_detail.dart' as _i6;
import 'package:riverpod_refresh/widgets/user/user_detail.dart' as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    UsersRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.UsersScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    PhotosRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PhotosScreen(),
      );
    },
    PostsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.PostsScreen(),
      );
    },
    UsersRouter.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.UsersRouterPage(),
      );
    },
    PostsRouter.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.PostsRouterPage(),
      );
    },
    PostDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PostDetailRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.PostDetailScreen(
          key: args.key,
          post: args.post,
        ),
      );
    },
    UserDetailRoute.name: (routeData) {
      final args = routeData.argsAs<UserDetailRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.UserDetailScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.UsersScreen]
class UsersRoute extends _i8.PageRouteInfo<void> {
  const UsersRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UsersRoute.name,
          initialChildren: children,
        );

  static const String name = 'UsersRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PhotosScreen]
class PhotosRoute extends _i8.PageRouteInfo<void> {
  const PhotosRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PhotosRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhotosRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PostsScreen]
class PostsRoute extends _i8.PageRouteInfo<void> {
  const PostsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PostsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.UsersRouterPage]
class UsersRouter extends _i8.PageRouteInfo<void> {
  const UsersRouter({List<_i8.PageRouteInfo>? children})
      : super(
          UsersRouter.name,
          initialChildren: children,
        );

  static const String name = 'UsersRouter';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PostsRouterPage]
class PostsRouter extends _i8.PageRouteInfo<void> {
  const PostsRouter({List<_i8.PageRouteInfo>? children})
      : super(
          PostsRouter.name,
          initialChildren: children,
        );

  static const String name = 'PostsRouter';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PostDetailScreen]
class PostDetailRoute extends _i8.PageRouteInfo<PostDetailRouteArgs> {
  PostDetailRoute({
    _i9.Key? key,
    required _i10.Post post,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          PostDetailRoute.name,
          args: PostDetailRouteArgs(
            key: key,
            post: post,
          ),
          initialChildren: children,
        );

  static const String name = 'PostDetailRoute';

  static const _i8.PageInfo<PostDetailRouteArgs> page =
      _i8.PageInfo<PostDetailRouteArgs>(name);
}

class PostDetailRouteArgs {
  const PostDetailRouteArgs({
    this.key,
    required this.post,
  });

  final _i9.Key? key;

  final _i10.Post post;

  @override
  String toString() {
    return 'PostDetailRouteArgs{key: $key, post: $post}';
  }
}

/// generated route for
/// [_i7.UserDetailScreen]
class UserDetailRoute extends _i8.PageRouteInfo<UserDetailRouteArgs> {
  UserDetailRoute({
    _i9.Key? key,
    required _i11.User user,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          UserDetailRoute.name,
          args: UserDetailRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserDetailRoute';

  static const _i8.PageInfo<UserDetailRouteArgs> page =
      _i8.PageInfo<UserDetailRouteArgs>(name);
}

class UserDetailRouteArgs {
  const UserDetailRouteArgs({
    this.key,
    required this.user,
  });

  final _i9.Key? key;

  final _i11.User user;

  @override
  String toString() {
    return 'UserDetailRouteArgs{key: $key, user: $user}';
  }
}
