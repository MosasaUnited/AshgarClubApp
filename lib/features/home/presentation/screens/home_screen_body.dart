import 'package:flutter/material.dart';
import 'package:shagra_club_app/core/theme/styles.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Home Screen',
      style: Styles.textStyle30,
    ));
  }
}
