import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class NewMemberRegister extends StatelessWidget {
  const NewMemberRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Text(
            'New Member ? ',
            style: Styles.textStyle12,
          ),
        ),
        const Spacer(),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: TextButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSignUp);
            },
            child: Text(
              'Register Now',
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
