part of 'onboarding_cubit.dart';

@immutable
abstract class OnboardingState {}

final class OnboardingInitialState extends OnboardingState {}

final class OnboardingNext extends OnboardingState {}

final class OnboardingOnPageChanged extends OnboardingState {
  final int currentPage;

  OnboardingOnPageChanged(this.currentPage);
}
