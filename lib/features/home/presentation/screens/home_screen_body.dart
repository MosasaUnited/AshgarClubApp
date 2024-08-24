import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/widgets/custom_shader_mask_text.dart';
import 'package:shagra_club_app/features/home/presentation/widgets/rating_bar.dart';

import '../widgets/contact_us_button.dart';
import '../widgets/image_slider_with_indicator.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomShaderMaskText(text: 'Events'),
          SizedBox(
            height: 8.h,
          ),
          const ImageSliderWithIndicator(),
          SizedBox(
            height: 10.h,
          ),
          const CustomShaderMaskText(text: 'Follow and Contact Us'),
          const ContactUsButtons(),
          const CustomShaderMaskText(text: 'Rate your Club experience'),
          SizedBox(
            height: 10.h,
          ),
          const CustomRatingBar(),
        ],
      ),
    );
  }
}
