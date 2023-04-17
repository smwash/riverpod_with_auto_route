

import 'package:riverpod_refresh/models/post_mdl.dart';
import 'package:riverpod_refresh/repositories/repository_export.dart';

final _postRepositoryProvider =
    Provider<PostRepository>((ref) => PostRepository(ref));

class PostRepository extends DataService {
  final Ref _ref;
  PostRepository(this._ref);

  static Provider<PostRepository> get provider => _postRepositoryProvider;

  @override
  String get url => UrlConfig.post;
  @override
  Ref get ref => _ref;
  @override
  loadObjectFromJson(Map<String, dynamic> data) {
    return Post.fromMap(data);
  }
}
