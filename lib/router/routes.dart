import 'package:go_router/go_router.dart';

import '../ui/view/main_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MainScreen(),
    ),
  ],
);
