import 'package:riverpod_refresh/models/post_mdl.dart';
import 'package:riverpod_refresh/repositories/repository_export.dart';

final _commentRepositoryProvider =
    Provider<CommentRepository>((ref) => CommentRepository(ref));

class CommentRepository extends DataService {
  final Ref _ref;
  CommentRepository(this._ref);

  static Provider<CommentRepository> get provider => _commentRepositoryProvider;

  @override
  String get url => UrlConfig.comment;
  @override
  Ref get ref => _ref;
  @override
  loadObjectFromJson(Map<String, dynamic> data) {
    return Comment.fromMap(data);
  }
}
