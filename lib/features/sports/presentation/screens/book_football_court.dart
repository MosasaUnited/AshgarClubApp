import 'package:flutter/material.dart';
import 'package:shagra_club_app/core/theme/styles.dart';
import 'package:shagra_club_app/core/widgets/simple_leading.dart';

class BookFootballCourt extends StatelessWidget {
  const BookFootballCourt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SimpleLeading(),
      ),
      body: Center(
        child: Text(
          'Book Football Court',
          style: Styles.textStyle30,
        ),
      ),
    );
  }
}
