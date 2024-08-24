import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/image_assets.dart';
import '../../../../core/theme/colors.dart';
import 'court_rich_text.dart';
import 'courts_image_asset.dart';

class TennisCourt extends StatelessWidget {
  const TennisCourt({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite.w,
      height: 200.h,
      child: InkWell(
        highlightColor: MyColors.appColor,
        onTap: () {},
        child: const Card(
          color: Colors.transparent,
          clipBehavior: Clip.antiAlias,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CourtsImageAsset(image: ImageAssets.bookCourtTennis),
              Positioned(
                bottom: 10,
                left: 10,
                child: CourtRichText(
                  courtTitlePart1: 'Te',
                  courtTitlePart2: 'nnis',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
