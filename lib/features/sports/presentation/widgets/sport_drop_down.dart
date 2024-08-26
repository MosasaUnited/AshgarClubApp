import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_drop_down_list.dart';

class SportDropDown extends StatelessWidget {
  const SportDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDropdown(
      labelText: 'Sport',
      items: const [
        '',
        'Football',
        'Swimming',
        'Tennis',
      ],
      // TODO: when Logic is done must change it to Validator
      onChanged: (value) {
        if (value == '') {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Sport Required',
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
