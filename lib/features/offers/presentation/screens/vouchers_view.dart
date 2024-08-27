import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/constants/image_assets.dart';
import 'package:shagra_club_app/core/constants/strings.dart';
import 'package:shagra_club_app/features/offers/presentation/widgets/vouchers_rich_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class VouchersView extends StatelessWidget {
  const VouchersView({super.key});
  final whatsAppUrl = AppStrings.clubWhatsapp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const VouchersRichText(),
          Image.asset(
            ImageAssets.peopleTalking,
            height: 250.h,
            width: 250.w,
          ),
          ElevatedButton(
            style: ButtonStyle(
              elevation: const WidgetStatePropertyAll<double>(16),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: const WidgetStatePropertyAll<Color>(
                MyColors.myTeal,
              ),
              foregroundColor: const WidgetStatePropertyAll<Color>(
                MyColors.myOffWhite,
              ),
            ),
            onPressed: () async {
              if (await canLaunchUrlString(whatsAppUrl)) {
                await launchUrlString(whatsAppUrl);
              }
            },
            child: Animate(
              child: Text(
                'Refer a Friend',
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w700,
                  color: MyColors.myYellow,
                  fontSize: 16.sp,
                ),
              )
                  .animate(
                    delay: 200.ms,
                    onPlay: (controller) => controller.reverseDuration!,
                  )
                  .tint(
                    color: Colors.white,
                    delay: 5000.ms,
                    duration: const Duration(milliseconds: 500),
                  ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
