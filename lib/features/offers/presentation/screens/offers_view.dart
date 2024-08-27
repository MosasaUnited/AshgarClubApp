import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/constants/image_assets.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/payment_widget.dart';
import '../widgets/offers_rich_text.dart';

class OffersView extends StatefulWidget {
  const OffersView({super.key});

  @override
  State<OffersView> createState() => _OffersViewState();
}

class _OffersViewState extends State<OffersView> {
  bool showPaymentScreen = false;

  void togglePaymentScreen() {
    setState(() {
      showPaymentScreen = !showPaymentScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: showPaymentScreen
          ? PaymentWidget(onClose: togglePaymentScreen)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const OffersRichText(),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  height: 250.h,
                  width: 250.w,
                  child: Image.asset(
                    ImageAssets.offers,
                  ),
                ),
                SizedBox(
                  height: 15.h,
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
                  onPressed: () {
                    togglePaymentScreen();
                  },
                  child: Animate(
                    child: Text(
                      'Proceed to Payment',
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
                SizedBox(height: 20.h),
              ],
            ),
    );
  }
}
