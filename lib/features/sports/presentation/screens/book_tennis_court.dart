import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/simple_leading.dart';

class BookTennisCourt extends StatelessWidget {
  const BookTennisCourt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SimpleLeading(),
      ),
      body: Center(
        child: Text(
          'Book Tennis Court',
          style: Styles.textStyle30,
        ),
      ),
    );
  }
}
