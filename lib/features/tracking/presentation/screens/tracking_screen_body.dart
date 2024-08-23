import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class TrackingScreenBody extends StatelessWidget {
  const TrackingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Tracking Screen',
      style: Styles.textStyle30,
    ));
  }
}
