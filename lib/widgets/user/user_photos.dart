import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:riverpod_refresh/models/user_mdl.dart';
import 'package:riverpod_refresh/providers/user/user_provider.dart';
import 'package:riverpod_refresh/utils/utilities.dart';

class UserPhotos extends ConsumerWidget {
  const UserPhotos({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(userPhotosProvider(userId: user.id)).when(
        data: (photos) {
          return RefreshIndicator(
            onRefresh: () {
              ref.invalidate(userPhotosProvider);
              return ref.read(userPhotosProvider(userId: user.id).future);
            },
            child: MasonryGridView.builder(
                itemCount: photos.length,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                itemBuilder: (context, index) {
                  final photo = photos[index];
                  return Padding(
                    padding: const EdgeInsets.all(2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(photo.thumbnailUrl),
                    ),
                  );
                }).animate().fade(duration: 300.ms),
          );
        },
        error: (e, st) => Center(
              child: Text(st.toString()),
            ),
        loading: () => Contstants.kLoader);
  }
}
