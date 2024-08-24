import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/widgets/custom_shader_mask_text.dart';

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
            height: 10.h,
          ),
          ImageSliderWithIndicator(),
        ],
      ),
    );
  }
}
