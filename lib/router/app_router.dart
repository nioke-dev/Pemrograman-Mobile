import 'package:go_router/go_router.dart';
import 'package:uts/features/home/home.dart';
import 'package:uts/shared/widget/splash.dart';

class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const Home(),
    ),
  ]);
}
