import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_refresh/services/router.dart';
import 'package:riverpod_refresh/utils/app_colors.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: ThemeData(
          fontFamily: GoogleFonts.nunito().fontFamily,
          primaryColor: AppColors.kPrimaryColor,
          colorScheme: const ColorScheme.light()
              .copyWith(primary: AppColors.kPrimaryColor),
          scaffoldBackgroundColor: AppColors.kScaffoldColor),
    );
  }
}
