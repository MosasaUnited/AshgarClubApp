import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/icon_assets.dart';
import '../../../../core/constants/strings.dart';
import '../../data/models/contact_link_model.dart';
import '../widgets/contact_icon_button.dart';

class ContactUsButtons extends StatelessWidget {
  const ContactUsButtons({super.key});

  static const contactLinks = [
    ContactLink(
      url: AppStrings.clubWhatsapp,
      iconAssetPath: IconAssets.whatsappIcon,
      label: 'WhatsApp',
    ),
    ContactLink(
      url: AppStrings.clubEmail,
      iconAssetPath: IconAssets.emailIcon,
      label: 'Email',
    ),
    ContactLink(
      url: AppStrings.clubFacebook,
      iconAssetPath: IconAssets.facebookIcon,
      label: 'Facebook',
    ),
    ContactLink(
      url: AppStrings.clubInstagram,
      iconAssetPath: IconAssets.instagramIcon,
      label: 'Instagram',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20.h,
      ), // Adapt for larger screens
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (final link in contactLinks)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
              child: ProfileIconButton(link: link),
            ),
        ],
      ),
    );
  }
}
