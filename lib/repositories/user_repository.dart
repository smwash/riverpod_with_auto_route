

import 'package:riverpod_refresh/models/user_mdl.dart';
import 'package:riverpod_refresh/repositories/repository_export.dart';

final _userRepositoryProvider =
    Provider<UserRepository>((ref) => UserRepository(ref));

class UserRepository extends DataService {
  final Ref _ref;
  UserRepository(this._ref);

  static Provider<UserRepository> get provider => _userRepositoryProvider;

  @override
  String get url => UrlConfig.user;
  @override
  Ref get ref => _ref;
  @override
  loadObjectFromJson(Map<String, dynamic> data) {
    return User.fromMap(data);
  }
}
