// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchPostsHash() => r'6ace80379d1bbbd3d3b80bfe256c46b40497dcbe';

/// See also [fetchPosts].
@ProviderFor(fetchPosts)
final fetchPostsProvider = FutureProvider<List<Post>>.internal(
  fetchPosts,
  name: r'fetchPostsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchPostsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchPostsRef = FutureProviderRef<List<Post>>;
String _$fetchPostCommentsHash() => r'ca47bee57f96915b7299fb1832ed8cd37955a7ad';

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

typedef FetchPostCommentsRef = FutureProviderRef<List<Comment>>;

/// See also [fetchPostComments].
@ProviderFor(fetchPostComments)
const fetchPostCommentsProvider = FetchPostCommentsFamily();

/// See also [fetchPostComments].
class FetchPostCommentsFamily extends Family<AsyncValue<List<Comment>>> {
  /// See also [fetchPostComments].
  const FetchPostCommentsFamily();

  /// See also [fetchPostComments].
  FetchPostCommentsProvider call({
    required int id,
  }) {
    return FetchPostCommentsProvider(
      id: id,
    );
  }

  @override
  FetchPostCommentsProvider getProviderOverride(
    covariant FetchPostCommentsProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'fetchPostCommentsProvider';
}

/// See also [fetchPostComments].
class FetchPostCommentsProvider extends FutureProvider<List<Comment>> {
  /// See also [fetchPostComments].
  FetchPostCommentsProvider({
    required this.id,
  }) : super.internal(
          (ref) => fetchPostComments(
            ref,
            id: id,
          ),
          from: fetchPostCommentsProvider,
          name: r'fetchPostCommentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPostCommentsHash,
          dependencies: FetchPostCommentsFamily._dependencies,
          allTransitiveDependencies:
              FetchPostCommentsFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is FetchPostCommentsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
