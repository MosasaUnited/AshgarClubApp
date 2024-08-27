import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class VouchersRichText extends StatelessWidget {
  const VouchersRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Get Extra 10 % Discount ',
            style: Styles.textStyle20.copyWith(
              fontSize: 24.sp,
              color: MyColors.myYellow,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'when Invite Friend to be a \n ',
            style: Styles.textStyle20.copyWith(
              fontSize: 20.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'Club Member',
            style: Styles.textStyle20.copyWith(
              fontSize: 24.sp,
              color: MyColors.myTeal,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
