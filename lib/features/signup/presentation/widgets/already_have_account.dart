import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shagra_club_app/core/routes/app_router.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Text(
            'Already Have an Account ? ',
            style: Styles.textStyle12,
          ),
        ),
        const Spacer(),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: TextButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kLogin);
            },
            child: Text(
              'Login Now',
              style: Styles.textStyle12.copyWith(
                color: MyColors.secondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
