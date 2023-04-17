// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_refresh/models/post_mdl.dart';
import 'package:riverpod_refresh/providers/posts/posts_provider.dart';
import 'package:riverpod_refresh/utils/utilities.dart';

@RoutePage()
class PostDetailScreen extends ConsumerStatefulWidget {
  const PostDetailScreen({super.key, required this.post});

  final Post post;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PostDetailScreenState();
}

class _PostDetailScreenState extends ConsumerState<PostDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.post.title ?? ''),
        leading: IconButton(
          icon: const Icon(Icons.keyboard_backspace_outlined),
          onPressed: () {
            context.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                title: Text(widget.post.title ?? ''),
                subtitle: Text(widget.post.body ?? ''),
                leading: const Icon(Icons.mark_as_unread_outlined),
                onTap: () {
                  //context.navigateTo(UserDetailRoute(user: user));
                },
              ),
            ).animate().fade(duration: 300.ms),
            const SizedBox(height: 10),
            Row(
              children: const [
                SizedBox(width: 12),
                Icon(Icons.comment),
                SizedBox(width: 7),
                Text(
                  'Comments',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child:
                  ref.watch(fetchPostCommentsProvider(id: widget.post.id)).when(
                      data: (comments) {
                        return RefreshIndicator(
                          onRefresh: () {
                            ref.invalidate(fetchPostCommentsProvider);
                            return ref.read(
                                fetchPostCommentsProvider(id: widget.post.id)
                                    .future);
                          },
                          child: ListView.builder(
                            itemCount: comments.length,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              final comment = comments[index];
                              return Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: ListTile(
                                  title: Text(comment.name),
                                  subtitle: Text(comment.body ?? ''),
                                  //trailing: Text(comment.email),
                                  onTap: () {
                                    //context.navigateTo(UserDetailRoute(user: user));
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
                      loading: () => Contstants.kLoader),
            )
          ],
        ),
      ),
    );
  }
}
