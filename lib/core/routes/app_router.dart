import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shagra_club_app/core/di/dependency_injection.dart';
import 'package:shagra_club_app/features/home/presentation/home_screen.dart';
import 'package:shagra_club_app/features/login/logic/cubit/login_cubit.dart';

import '../../features/login/presentation/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

abstract class AppRouter {
  //Login
  static const kLogin = '/login';
  static const kHome = '/homeScreen';

  static final router = GoRouter(
    routes: [
      // OnBoarding
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingScreen(),
      ),
      // Login Screen
      GoRoute(
        path: kLogin,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginScreen(),
        ),
      ),
      // Home Screen
      GoRoute(
        path: kHome,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
