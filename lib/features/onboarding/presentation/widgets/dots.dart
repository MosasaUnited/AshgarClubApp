import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../data/static/static.dart';
import '../../logic/cubit/onboarding_cubit.dart';

class Dots extends StatelessWidget {
  const Dots({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        final cubit = context.read<OnboardingCubit>();
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            onBoardingList.length,
            (index) {
              final isSelected = index == cubit.currentPage;
              return AnimatedContainer(
                margin: EdgeInsets.only(right: 6.w),
                duration: const Duration(milliseconds: 900),
                width: isSelected ? 25.w : 7.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: MyColors.appColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
