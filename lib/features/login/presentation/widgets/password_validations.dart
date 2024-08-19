import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('على الأقل حرف واحد small', hasLowerCase),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('على الأقل حرف واحد CAPITAL', hasUpperCase),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow(
            'على الأقل حرف واحد خاص زى % # @', hasSpecialCharacter),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('على الأقل رقم واحد', hasNumber),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('على الأقل 8 حروف', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: MyColors.myGrey,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          text,
          style: Styles.textStyle12.copyWith(
            fontSize: 13,
            fontWeight: FontWeight.normal,
            color: hasValidated ? MyColors.myGrey : MyColors.myLightBlue,
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
          ),
        ),
      ],
    );
  }
}
