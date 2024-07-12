import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:stck_site/pages/home_page.dart';
import 'package:stck_site/pages/post_page.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const MyHomePage(),
    ),
    GoRoute(
      path: "/post/:postId",
      builder: (context, state) => PostPage(id: int.parse(state.pathParameters['postId'] ?? '')),
    ),
//     GoRoute(
//       path: '/details',
//       pageBuilder: (context, state) {
//         return CustomTransitionPage(
//           key: state.pageKey,
//           child: const PostPage(id: '1',),
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             return FadeTransition(
//               opacity:
//                   CurveTween(curve: Curves.easeInOutCirc).animate(animation),
//               child: child,
//             );
//           },
//         );
//   },
// ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
