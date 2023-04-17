import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_refresh/providers/user/user_provider.dart';
import 'package:riverpod_refresh/services/router.gr.dart';
import 'package:riverpod_refresh/utils/utilities.dart';

@RoutePage()
class UsersScreen extends ConsumerWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(title: const Text('Users')),
        body: ref.watch(fetchUsersProvider).when(
            data: (users) {
              return RefreshIndicator(
                onRefresh: () {
                  ref.invalidate(fetchUsersProvider);
                  return ref.read(fetchUsersProvider.future);
                },
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (BuildContext context, int index) {
                    final user = users[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: ListTile(
                        title: Text(user.name),
                        subtitle: Text.rich(TextSpan(children: [
                          TextSpan(text: user.username),
                          const TextSpan(text: ' • '),
                          TextSpan(text: user.company.name)
                        ])),
                        trailing: Text(user.phone),
                        onTap: () {
                          context.navigateTo(UserDetailRoute(user: user));
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
            loading: () => Contstants.kLoader));
  }
}
