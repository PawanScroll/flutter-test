import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:stck_site/pages/home_page.dart';
import 'package:stck_site/pages/post_page.dart';
import 'package:stck_site/pages/search_page.dart';
import 'package:stck_site/pages/profile_page.dart';
import 'package:stck_site/store/active_site.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (_, __) => const SearchPage(),
    ),
    GoRoute(
      path: "/profile",
      builder: (_, __) => const MyProfilePage(),
    ),
    GoRoute(
      path: "/post/:siteId/:postId",
      builder: (context, state) => PostPage(
        id: int.parse(state.pathParameters['postId'] ?? ''),
        siteId: int.parse(state.pathParameters['siteId'] ?? ''),
      ),
    ),
    GoRoute(
      path: "/site",
      builder: (_, __) => const MyHomePage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ActiveSite(),
      child: MaterialApp.router(
        routerConfig: _router,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
