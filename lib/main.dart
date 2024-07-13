import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:stck_site/pages/home_page.dart';
import 'package:stck_site/pages/post_page.dart';
import 'package:stck_site/pages/search_page.dart';

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
      path: "/post/:postId",
      builder: (context, state) =>
          PostPage(id: int.parse(state.pathParameters['postId'] ?? '')),
    ),
    GoRoute(
      path: "/home",
      builder: (_, __) => const MyHomePage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
