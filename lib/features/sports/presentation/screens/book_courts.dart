import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/widgets/custom_shader_mask_text.dart';
import 'package:shagra_club_app/features/sports/presentation/widgets/swimming_court.dart';
import 'package:shagra_club_app/features/sports/presentation/widgets/tennis_court.dart';

import '../widgets/football_court.dart';

class BookCourts extends StatelessWidget {
  const BookCourts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomShaderMaskText(text: 'Book Now'),
          SizedBox(
            height: 10.h,
          ),
          const FootballCourt(),
          SizedBox(
            height: 10.h,
          ),
          const SwimmingCourt(),
          SizedBox(
            height: 10.h,
          ),
          const TennisCourt(),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
