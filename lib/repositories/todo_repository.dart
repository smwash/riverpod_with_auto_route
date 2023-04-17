import 'package:riverpod_refresh/models/post_mdl.dart';
import 'package:riverpod_refresh/repositories/repository_export.dart';

final _todoRepositoryProvider =
    Provider<TodoRepository>((ref) => TodoRepository(ref));

class TodoRepository extends DataService {
  final Ref _ref;
  TodoRepository(this._ref);

  static Provider<TodoRepository> get provider => _todoRepositoryProvider;

  @override
  String get url => UrlConfig.todo;
  @override
  Ref get ref => _ref;
  @override
  loadObjectFromJson(Map<String, dynamic> data) {
    return Todo.fromMap(data);
  }
}
