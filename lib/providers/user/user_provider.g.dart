// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchUsersHash() => r'99d638a28533020b33f38e90b1395a1ae8cc405f';

/// See also [fetchUsers].
@ProviderFor(fetchUsers)
final fetchUsersProvider = FutureProvider<List<User>>.internal(
  fetchUsers,
  name: r'fetchUsersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchUsersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchUsersRef = FutureProviderRef<List<User>>;
String _$fetchUserPostsHash() => r'751c36e760203f91269d0753400080b45bfead2b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef FetchUserPostsRef = FutureProviderRef<List<Post>>;

/// See also [fetchUserPosts].
@ProviderFor(fetchUserPosts)
const fetchUserPostsProvider = FetchUserPostsFamily();

/// See also [fetchUserPosts].
class FetchUserPostsFamily extends Family<AsyncValue<List<Post>>> {
  /// See also [fetchUserPosts].
  const FetchUserPostsFamily();

  /// See also [fetchUserPosts].
  FetchUserPostsProvider call({
    required int userId,
  }) {
    return FetchUserPostsProvider(
      userId: userId,
    );
  }

  @override
  FetchUserPostsProvider getProviderOverride(
    covariant FetchUserPostsProvider provider,
  ) {
    return call(
      userId: provider.userId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchUserPostsProvider';
}

/// See also [fetchUserPosts].
class FetchUserPostsProvider extends FutureProvider<List<Post>> {
  /// See also [fetchUserPosts].
  FetchUserPostsProvider({
    required this.userId,
  }) : super.internal(
          (ref) => fetchUserPosts(
            ref,
            userId: userId,
          ),
          from: fetchUserPostsProvider,
          name: r'fetchUserPostsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchUserPostsHash,
          dependencies: FetchUserPostsFamily._dependencies,
          allTransitiveDependencies:
              FetchUserPostsFamily._allTransitiveDependencies,
        );

  final int userId;

  @override
  bool operator ==(Object other) {
    return other is FetchUserPostsProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$userTodosHash() => r'28dc55052da4e68794b3c594d299111ceb8f8282';
typedef UserTodosRef = FutureProviderRef<List<Todo>>;

/// See also [userTodos].
@ProviderFor(userTodos)
const userTodosProvider = UserTodosFamily();

/// See also [userTodos].
class UserTodosFamily extends Family<AsyncValue<List<Todo>>> {
  /// See also [userTodos].
  const UserTodosFamily();

  /// See also [userTodos].
  UserTodosProvider call({
    required int userId,
  }) {
    return UserTodosProvider(
      userId: userId,
    );
  }

  @override
  UserTodosProvider getProviderOverride(
    covariant UserTodosProvider provider,
  ) {
    return call(
      userId: provider.userId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userTodosProvider';
}

/// See also [userTodos].
class UserTodosProvider extends FutureProvider<List<Todo>> {
  /// See also [userTodos].
  UserTodosProvider({
    required this.userId,
  }) : super.internal(
          (ref) => userTodos(
            ref,
            userId: userId,
          ),
          from: userTodosProvider,
          name: r'userTodosProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userTodosHash,
          dependencies: UserTodosFamily._dependencies,
          allTransitiveDependencies: UserTodosFamily._allTransitiveDependencies,
        );

  final int userId;

  @override
  bool operator ==(Object other) {
    return other is UserTodosProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$userPhotosHash() => r'35858ca42405c10616c733b2545bf5170ab5ebb5';
typedef UserPhotosRef = FutureProviderRef<List<Photo>>;

/// See also [userPhotos].
@ProviderFor(userPhotos)
const userPhotosProvider = UserPhotosFamily();

/// See also [userPhotos].
class UserPhotosFamily extends Family<AsyncValue<List<Photo>>> {
  /// See also [userPhotos].
  const UserPhotosFamily();

  /// See also [userPhotos].
  UserPhotosProvider call({
    required int userId,
  }) {
    return UserPhotosProvider(
      userId: userId,
    );
  }

  @override
  UserPhotosProvider getProviderOverride(
    covariant UserPhotosProvider provider,
  ) {
    return call(
      userId: provider.userId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userPhotosProvider';
}

/// See also [userPhotos].
class UserPhotosProvider extends FutureProvider<List<Photo>> {
  /// See also [userPhotos].
  UserPhotosProvider({
    required this.userId,
  }) : super.internal(
          (ref) => userPhotos(
            ref,
            userId: userId,
          ),
          from: userPhotosProvider,
          name: r'userPhotosProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userPhotosHash,
          dependencies: UserPhotosFamily._dependencies,
          allTransitiveDependencies:
              UserPhotosFamily._allTransitiveDependencies,
        );

  final int userId;

  @override
  bool operator ==(Object other) {
    return other is UserPhotosProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
