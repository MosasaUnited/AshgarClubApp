import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_drop_down_list.dart';

class TrainerDropDownList extends StatelessWidget {
  const TrainerDropDownList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDropdown(
      items: const [
        '',
        'Mohamed',
        'Mostafa',
        'Zein',
        'Fred',
      ],
      labelText: 'Trainer Name',
      onChanged: (value) {
        if (value == '') {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Trainer Name is Required',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              backgroundColor: Colors.redAccent,
            ),
          );
        }
      },
    );
  }
}
