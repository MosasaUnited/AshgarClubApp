import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/image_assets.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/theme/colors.dart';
import 'court_rich_text.dart';
import 'courts_image_asset.dart';

class SwimmingCourt extends StatelessWidget {
  const SwimmingCourt({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite.w,
      height: 200.h,
      child: InkWell(
        highlightColor: MyColors.appColor,
        onTap: () {
          Future.delayed(
            const Duration(
              microseconds: 1500,
            ),
            () {
              GoRouter.of(context).push(AppRouter.kSwimmingCourt);
            },
          );
        },
        child: const Card(
          color: Colors.transparent,
          clipBehavior: Clip.antiAlias,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CourtsImageAsset(image: ImageAssets.bookCourtSwimming),
              Positioned(
                bottom: 10,
                left: 10,
                child: CourtRichText(
                  courtTitlePart1: 'Swim',
                  courtTitlePart2: 'ming',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
