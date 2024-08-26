import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/theme/colors.dart';

import '../constants/icon_assets.dart';
import '../theme/styles.dart';
import 'credit_card_payment.dart';
import 'fawry_payment.dart';

class PaymentWidget extends StatefulWidget {
  final VoidCallback onClose;

  const PaymentWidget({super.key, required this.onClose});

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  final formKey = GlobalKey<FormState>();

  String _selectedPaymentMethod = 'Credit Card';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Center(
        child: Container(
          width: 320.w,
          height: 400.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: MyColors.myOffWhite,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: widget.onClose,
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Text(
                          'Payment',
                          style: Styles.textStyle30,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Choose your preferred payment method',
                        style: Styles.textStyle16,
                      ),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            Text(
                              'Credit Card',
                              style: Styles.textStyle16.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Image.asset(IconAssets.creditCardIcon),
                          ],
                        ),
                        value: 'Credit Card',
                        groupValue: _selectedPaymentMethod,
                        onChanged: (value) {
                          setState(
                            () {
                              _selectedPaymentMethod = value!;
                            },
                          );
                        },
                      ),
                      RadioListTile<String>(
                        title: Row(
                          children: [
                            Text(
                              'Fawry',
                              style: Styles.textStyle16.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 40.w,
                            ),
                            Image.asset(
                              IconAssets.fawryIcon,
                              height: 50.h,
                              width: 60.w,
                            ),
                          ],
                        ),
                        value: 'Fawry',
                        groupValue: _selectedPaymentMethod,
                        onChanged: (value) {
                          setState(() {
                            _selectedPaymentMethod = value!;
                          });
                        },
                      ),
                      if (_selectedPaymentMethod == 'Credit Card')
                        const CreditCardPaymentWidget(),
                      if (_selectedPaymentMethod == 'Store Credit')
                        const FawryPaymentWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
