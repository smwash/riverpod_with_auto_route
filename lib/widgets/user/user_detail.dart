// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_refresh/models/user_mdl.dart';
import 'package:riverpod_refresh/utils/app_colors.dart';

import 'user_photos.dart';
import 'user_posts.dart';
import 'user_todos.dart';

@RoutePage()
class UserDetailScreen extends ConsumerStatefulWidget {
  const UserDetailScreen({super.key, required this.user});

  final User user;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserDetailScreenState();
}

class _UserDetailScreenState extends ConsumerState<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Column(children: [
                Row(
                  children: [
                    const Icon(Icons.account_circle, size: 40),
                    const SizedBox(width: 10),
                    Text(
                      widget.user.name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Username: ',
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                    const SizedBox(width: 5),
                    Text(widget.user.username)
                  ],
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    const Icon(Icons.email_outlined, size: 17),
                    const SizedBox(width: 5),
                    Text(
                      'Email: ',
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                    const SizedBox(width: 5),
                    Text(widget.user.email)
                  ],
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    const Icon(Icons.pin_drop_outlined, size: 17),
                    const SizedBox(width: 5),
                    Text(
                      'Address: ',
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                    const SizedBox(width: 5),
                    Text(
                        '${widget.user.address.city}, ${widget.user.address.suite}, ${widget.user.address.street}')
                  ],
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    const Icon(Icons.call_outlined, size: 17),
                    const SizedBox(width: 5),
                    Text(
                      'Phone: ',
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                    const SizedBox(width: 5),
                    Text(widget.user.phone)
                  ],
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    const Icon(Icons.language_outlined, size: 17),
                    const SizedBox(width: 5),
                    Text(
                      'Website: ',
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                    const SizedBox(width: 5),
                    Text(widget.user.website)
                  ],
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    const Icon(Icons.apartment_outlined, size: 17),
                    const SizedBox(width: 5),
                    Text(
                      'Company: ',
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                    const SizedBox(width: 5),
                    Text(widget.user.company.name)
                  ],
                ),
              ]),
            ).animate().fade(duration: 700.ms),
            const SizedBox(height: 5),
            DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 7),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: TabBar(
                          indicator: BoxDecoration(
                              color: AppColors.kPrimaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black54,
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 15),
                          tabs: const [
                            Tab(text: 'Posts'),
                            Tab(text: 'Todos'),
                            Tab(text: 'Photos'),
                          ]),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: TabBarView(children: [
                        UserPosts(user: widget.user),
                        UserTodos(user: widget.user),
                        UserPhotos(user: widget.user),
                      ]),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
