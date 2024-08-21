import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shagra_club_app/core/routes/app_router.dart';
import 'package:shagra_club_app/core/theme/colors.dart';
import 'package:shagra_club_app/core/theme/styles.dart';
import 'package:shagra_club_app/features/login/logic/cubit/login_cubit.dart';
import 'package:shagra_club_app/features/login/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: MyColors.myLightBlue,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            GoRouter.of(context).push(AppRouter.kHome);
          },
          error: (error) {
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
