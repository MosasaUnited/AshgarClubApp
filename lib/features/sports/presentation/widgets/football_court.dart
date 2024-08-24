import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagra_club_app/core/theme/colors.dart';

import '../../../../core/constants/image_assets.dart';
import '../../../../core/routes/app_router.dart';
import 'court_rich_text.dart';
import 'courts_image_asset.dart';

class FootballCourt extends StatelessWidget {
  const FootballCourt({super.key});

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
              GoRouter.of(context).push(AppRouter.kFootballCourt);
            },
          );
        },
        child: const Card(
          color: Colors.transparent,
          clipBehavior: Clip.antiAlias,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CourtsImageAsset(image: ImageAssets.bookCourtFootball),
              Positioned(
                bottom: 10,
                left: 10,
                child: CourtRichText(
                  courtTitlePart1: 'Foot',
                  courtTitlePart2: 'ball',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
