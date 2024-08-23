import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class SportsScreenBody extends StatelessWidget {
  const SportsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Sports Screen',
      style: Styles.textStyle30,
    ));
  }
}
