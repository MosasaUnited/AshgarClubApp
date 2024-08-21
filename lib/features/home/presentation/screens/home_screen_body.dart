import 'package:flutter/material.dart';
import 'package:shagra_club_app/core/theme/styles.dart';
import 'package:shagra_club_app/core/widgets/simple_leading.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SimpleLeading(),
      ),
      body: Center(
          child: Text(
        'Home Screen',
        style: Styles.textStyle30,
      )),
    );
  }
}
