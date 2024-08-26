import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/widgets/custom_shader_mask_text.dart';

import '../../../../core/theme/styles.dart';

class BookedAppointment extends StatelessWidget {
  const BookedAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomShaderMaskText(text: 'Your Schedule Booked'),
          SizedBox(
            height: 10.h,
          ),
          Card(
            elevation: 0,
            color: Colors.deepPurpleAccent,
            shadowColor: Colors.yellow,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            child: Text(
              ' Courts 1 On Next Wednesday at 10:00 AM',
              style: Styles.textStyle20.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
