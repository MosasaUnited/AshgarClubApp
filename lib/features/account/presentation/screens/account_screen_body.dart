import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class AccountScreenBody extends StatelessWidget {
  const AccountScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Account Screen',
      style: Styles.textStyle30,
    ));
  }
}
