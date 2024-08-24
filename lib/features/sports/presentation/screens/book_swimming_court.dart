import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/simple_leading.dart';

class BookSwimmingCourt extends StatelessWidget {
  const BookSwimmingCourt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SimpleLeading(),
      ),
      body: Center(
        child: Text(
          'Book Swimming Court',
          style: Styles.textStyle30,
        ),
      ),
    );
  }
}
