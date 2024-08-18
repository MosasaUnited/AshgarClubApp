import 'package:flutter/material.dart';
import 'package:shagra_club_app/features/onboarding/presentation/widgets/slider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: CustomSliderOnboarding(),
            ),
          ],
        ),
      ),
    );
  }
}
