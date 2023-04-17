// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_refresh/models/user_mdl.dart';
import 'package:riverpod_refresh/providers/user/user_provider.dart';
import 'package:riverpod_refresh/services/router.gr.dart';
import 'package:riverpod_refresh/utils/utilities.dart';

class UserPosts extends ConsumerWidget {
  const UserPosts({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchUserPostsProvider(userId: user.id)).when(
        data: (posts) {
          return RefreshIndicator(
            onRefresh: () {
              ref.invalidate(fetchUserPostsProvider);
              return ref.read(fetchUserPostsProvider(userId: user.id).future);
            },
            child: ListView.builder(
              itemCount: posts.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final post = posts[index];
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    title: Text(post.title ?? ''),
                    subtitle: Text(post.body ?? ''),
                    onTap: () {
                      context.navigateTo(
                          PostsRouter(children: [PostDetailRoute(post: post)]));
                    },
                  ),
                ).animate().fade(duration: 300.ms);
              },
            ),
          );
        },
        error: (e, st) {
          return Center(
            child: Text(st.toString()),
          );
        },
        loading: () => Contstants.kLoader);
  }
}
