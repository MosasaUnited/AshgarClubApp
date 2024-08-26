import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/theme/colors.dart';

class CustomDropdown extends StatelessWidget {
  final String labelText;
  final List<String> items;
  final String? selectedItem;
  final ValueChanged<String?> onChanged;
  final String? Function(String?)? validator;

  const CustomDropdown({
    super.key,
    required this.labelText,
    required this.items,
    this.selectedItem,
    required this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: DropdownButtonFormField<String>(
        value: selectedItem,
        validator: validator,
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Center(child: Text(item)),
          );
        }).toList(),
        onChanged: onChanged,
        icon: const Icon(Icons.arrow_drop_down),
        decoration: InputDecoration(
          fillColor: Colors.white,
          labelText: labelText,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 15.sp,
            color: MyColors.myTeal,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
    );
  }
}
