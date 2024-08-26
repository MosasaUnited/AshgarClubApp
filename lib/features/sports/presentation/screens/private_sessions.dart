import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/widgets/payment_widget.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_date_picker.dart';
import '../../../../core/widgets/custom_shader_mask_text.dart';
import '../widgets/sport_drop_down.dart';
import '../widgets/trainier_drop_down_list.dart';

class PrivateSessions extends StatefulWidget {
  const PrivateSessions({super.key});

  @override
  State<PrivateSessions> createState() => _PrivateSessionsState();
}

class _PrivateSessionsState extends State<PrivateSessions> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomShaderMaskText(
                  text: 'Book Sessions with a Personal Trainer Now :',
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    const SportDropDown(),
                    SizedBox(
                      width: 20.h,
                    ),
                    const TrainerDropDownList(),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomDatePicker(
                  hintText: 'Pick a Date',
                  validatorText: 'Please select a date',
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: ElevatedButton(
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
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
    );
  }
}
