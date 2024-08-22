import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Text(
            'Forget Password ?',
            style: Styles.textStyle12,
          ),
        ),
        const Spacer(),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Click Here',
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
