import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/theme/styles.dart';

class CourtRichText extends StatelessWidget {
  const CourtRichText(
      {super.key,
      required this.courtTitlePart1,
      required this.courtTitlePart2});

  final String courtTitlePart1;
  final String courtTitlePart2;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: courtTitlePart1,
            style: Styles.textStyle30.copyWith(
              color: Colors.amberAccent,
              fontWeight: FontWeight.w900,
              fontSize: 30.sp,
              height: 2.h,
              fontStyle: FontStyle.italic,
            ),
          ),
          TextSpan(
            text: courtTitlePart2,
            style: Styles.textStyle30.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 30.sp,
              height: 2.h,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
