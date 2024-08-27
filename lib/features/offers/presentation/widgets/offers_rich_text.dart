import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class OffersRichText extends StatelessWidget {
  const OffersRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Get 60 % Discount ',
            style: Styles.textStyle20.copyWith(
              fontSize: 24.sp,
              color: MyColors.myYellow,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'when Renew your Subscription Before \n ',
            style: Styles.textStyle20.copyWith(
              fontSize: 20.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'October 2024',
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
