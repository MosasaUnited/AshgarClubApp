import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardPaymentWidget extends StatelessWidget {
  const CreditCardPaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CreditCardWidget(
      cardNumber: '1234 5678 9012 3456', // Example card number
      expiryDate: '12/34', // Example expiry date
      cardHolderName: 'Your Name',
      cvvCode: '123', // Example CVV
      showBackView: false,
      onCreditCardWidgetChange: (CreditCardBrand) {},
    );
  }
}
