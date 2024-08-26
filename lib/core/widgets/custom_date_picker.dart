import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomDatePicker extends StatelessWidget {
  CustomDatePicker(
      {super.key, required this.hintText, required this.validatorText});

  final pickDateController = TextEditingController();

  final String hintText;

  final String validatorText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: pickDateController,
      decoration: InputDecoration(
        labelText: hintText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
      readOnly: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorText;
        }
        return null;
      },
      onTap: () async {
        final selectDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.parse('2038-01-01'),
        ).then((value) {
          pickDateController.text = DateFormat.yMMMMEEEEd().format(value!);
        });
        if (selectDate != null) {
          print(selectDate);
          final formattedDate = selectDate.format(context);
          pickDateController.text = formattedDate;
        } else if (selectDate.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Date not Selected',
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
