import 'package:riverpod_refresh/models/post_mdl.dart';
import 'package:riverpod_refresh/repositories/repository_export.dart';

final _photoRepositoryProvider =
    Provider<PhotoRepository>((ref) => PhotoRepository(ref));

class PhotoRepository extends DataService {
  final Ref _ref;
  PhotoRepository(this._ref);

  static Provider<PhotoRepository> get provider => _photoRepositoryProvider;

  @override
  String get url => UrlConfig.photo;
  @override
  Ref get ref => _ref;
  @override
  loadObjectFromJson(Map<String, dynamic> data) {
    return Photo.fromMap(data);
  }
}
