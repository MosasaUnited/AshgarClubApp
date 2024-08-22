import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shagra_club_app/features/signup/logic/sign_up_cubit.dart';
import 'package:shagra_club_app/features/signup/logic/sign_up_state.dart';

import '../../../../core/routes/app_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: MyColors.myLightBlue,
                ),
              ),
            );
          },
          signupSuccess: (signupResponse) {
            context.pop();
            GoRouter.of(context).push(AppRouter.kLogin);
          },
          signupError: (error) {
            context.pop();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 32,
                ),
                content: Text(
                  error,
                  style: Styles.textStyle12,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      'Got It',
                      style: Styles.textStyle14,
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
