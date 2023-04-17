import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_refresh/providers/posts/posts_provider.dart';
import 'package:riverpod_refresh/services/router.gr.dart';
import 'package:riverpod_refresh/utils/utilities.dart';

@RoutePage()
class PostsScreen extends ConsumerWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(title: const Text('Posts')),
        body: ref.watch(fetchPostsProvider).when(
            data: (posts) {
              return RefreshIndicator(
                onRefresh: () {
                  ref.invalidate(fetchPostsProvider);
                  return ref.read(fetchPostsProvider.future);
                },
                child: ListView.builder(
                  itemCount: posts.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final post = posts[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: ListTile(
                        title: Text(post.title ?? ''),
                        subtitle: Text(post.body ?? ''),
                        onTap: () {
                          context.navigateTo(PostDetailRoute(post: post));
                        },
                      ),
                    ).animate().fade(duration: 300.ms);
                  },
                ),
              );
            },
            error: (e, st) => Center(
                  child: Text(st.toString()),
                ),
            loading: () => Contstants.kLoader));
  }
}
