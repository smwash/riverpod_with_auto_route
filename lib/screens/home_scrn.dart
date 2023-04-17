import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:riverpod_refresh/services/router.gr.dart';
import 'package:riverpod_refresh/utils/app_colors.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        UsersRoute(),
        PostsRoute(),
        PhotosRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: GNav(
              gap: 8,
              selectedIndex: tabsRouter.activeIndex,
              onTabChange: tabsRouter.setActiveIndex,
              activeColor: Colors.white,
              tabBackgroundColor: AppColors.kPrimaryColor,
              padding: const EdgeInsets.all(16),
              tabs: const [
                GButton(icon: Icons.home_outlined, text: 'Home'),
                GButton(icon: Icons.post_add_outlined, text: 'Posts'),
                GButton(icon: Icons.photo_library_outlined, text: 'Photos'),
              ]),
        );
      },
    );
  }
}
