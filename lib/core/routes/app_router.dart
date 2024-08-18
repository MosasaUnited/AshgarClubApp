import 'package:go_router/go_router.dart';

import '../../features/onboarding/onboarding_screen.dart';

abstract class AppRouter {
  //Login
  static const kLogin = '/login';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
