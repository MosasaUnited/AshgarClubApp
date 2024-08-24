import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shagra_club_app/core/di/dependency_injection.dart';
import 'package:shagra_club_app/features/home/presentation/home_screen.dart';
import 'package:shagra_club_app/features/login/logic/cubit/login_cubit.dart';
import 'package:shagra_club_app/features/main/presentation/main_screen.dart';
import 'package:shagra_club_app/features/main/presentation/widgets/exit_show_dialogue.dart';
import 'package:shagra_club_app/features/signup/logic/sign_up_cubit.dart';
import 'package:shagra_club_app/features/signup/presentation/sign_up_screen.dart';

import '../../features/login/presentation/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

abstract class AppRouter {
  //Login
  static const kLogin = '/login';
  static const kMainScreen = '/main';
  static const kHome = '/homeScreen';
  static const kSignUp = '/signUp';
  static const kExitShowDialogue = '/exitShow';

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
      GoRoute(
        path: kMainScreen,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: kExitShowDialogue,
        builder: (context, state) => const ExitShowDialog(),
      ),
      GoRoute(
        path: kSignUp,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<SignupCubit>(),
          child: const SignUpScreen(),
        ),
      ),
    ],
  );
}
