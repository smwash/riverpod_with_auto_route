import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_refresh/models/post_mdl.dart';
import 'package:riverpod_refresh/network/url_config.dart';
import 'package:riverpod_refresh/providers/repository_provider.dart';
import 'package:riverpod_refresh/utils/extensions.dart';

part 'posts_provider.g.dart';

//ALL POSTS
@Riverpod(keepAlive: true)
Future<List<Post>> fetchPosts(FetchPostsRef ref) async {
  final cancelToken = ref.cancelToken();
  final data =
      await ref.read(Repository.post).getData(cancelToken: cancelToken);
  return data.cast();
}

//POST COMMENTS
@Riverpod(keepAlive: true)
Future<List<Comment>> fetchPostComments(FetchPostCommentsRef ref,
    {required int id}) async {
  final cancelToken = ref.cancelToken();
  final data = await ref.read(Repository.comment).getData(
      customUrl: '${UrlConfig.post}/$id${UrlConfig.comment}',
      cancelToken: cancelToken);
  return data.cast();
}
