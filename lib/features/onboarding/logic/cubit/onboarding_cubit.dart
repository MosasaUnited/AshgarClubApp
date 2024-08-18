import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_router.dart';
import '../../data/static/static.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  int currentPage = 0;

  late PageController pageController = PageController();

  OnboardingCubit() : super(OnboardingInitialState());

  void next(BuildContext context) {
    emit(OnboardingNext());
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
      GoRouter.of(context).push(AppRouter.kLogin);
    } else {
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  void onNextPageChanged(int index) {
    currentPage = index;
    emit(OnboardingOnPageChanged(index));
  }
}
