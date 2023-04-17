import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_refresh/models/user_mdl.dart';
import 'package:riverpod_refresh/providers/user/user_provider.dart';
import 'package:riverpod_refresh/utils/utilities.dart';

class UserTodos extends ConsumerWidget {
  const UserTodos({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(userTodosProvider(userId: user.id)).when(
        data: (todos) {
          return RefreshIndicator(
            onRefresh: () {
              ref.invalidate(userTodosProvider);
              return ref.read(userTodosProvider(userId: user.id).future);
            },
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (BuildContext context, int index) {
                final todo = todos[index];
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    title: Text(todo.title ?? ''),
                    trailing: todo.completed
                        ? const Icon(Icons.check_circle, color: Colors.green)
                        : const SizedBox.shrink(),
                    onTap: () {
                      //context.navigateTo(UserDetailRoute(user: user));
                    },
                  ),
                ).animate().fade(duration: 300.ms);
              },
            ),
          );
        },
        error: (e, st) => Center(
              child: Text(st.toString()),
            ),
        loading: () => Contstants.kLoader);
  }
}
