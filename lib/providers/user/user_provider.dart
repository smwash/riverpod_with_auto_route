//ALL Users
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_refresh/models/post_mdl.dart';
import 'package:riverpod_refresh/models/user_mdl.dart';
import 'package:riverpod_refresh/network/url_config.dart';
import 'package:riverpod_refresh/providers/repository_provider.dart';
import 'package:riverpod_refresh/utils/extensions.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<User>> fetchUsers(FetchUsersRef ref) async {
  final cancelToken = ref.cancelToken();
  final data =
      await ref.read(Repository.user).getData(cancelToken: cancelToken);
  return data.cast();
}

//USER POSTS
@Riverpod(keepAlive: true)
Future<List<Post>> fetchUserPosts(FetchUserPostsRef ref,
    {required int userId}) async {
  final cancelToken = ref.cancelToken();
  final data = await ref.read(Repository.post).getData(
      customUrl: '${UrlConfig.user}/$userId${UrlConfig.post}',
      cancelToken: cancelToken);
  return data.cast();
}

//USER TODOS
@Riverpod(keepAlive: true)
Future<List<Todo>> userTodos(UserTodosRef ref, {required int userId}) async {
  final cancelToken = ref.cancelToken();
  final data = await ref.read(Repository.todo).getData(
      customUrl: '${UrlConfig.user}/$userId${UrlConfig.todo}',
      cancelToken: cancelToken);
  return data.cast();
}

//USER PHOTOS
@Riverpod(keepAlive: true)
Future<List<Photo>> userPhotos(UserPhotosRef ref, {required int userId}) async {
  final cancelToken = ref.cancelToken();
  final data = await ref.read(Repository.photo).getData(
      customUrl: '${UrlConfig.user}/$userId${UrlConfig.photo}',
      cancelToken: cancelToken);
  return data.cast();
}
