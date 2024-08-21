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
        buildValidationRow('at least 1 lowercase letter', hasLowerCase),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('at least 1 UPPERCASE letter', hasUpperCase),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow(
            'at least 1 special character letter', hasSpecialCharacter),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('at least 1 number', hasNumber),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('at least 8 character long', hasMinLength),
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
            color: hasValidated ? MyColors.myGrey : Colors.purple,
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
          ),
        ),
      ],
    );
  }
}
