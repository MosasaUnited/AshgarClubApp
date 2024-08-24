import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagra_club_app/core/constants/icon_assets.dart';

class ExitShowDialog extends StatelessWidget {
  const ExitShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(15),
      title: const Text('Exit Confirmation'),
      icon: Image.asset(
        IconAssets.exit,
        height: 30.h,
      ),
      content: const Text(
        'Do you Really wanna Exit App ? ',
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
          onPressed: () => SystemNavigator.pop(),
          child: const Text('Ok'),
        ),
        TextButton(
          onPressed: () => GoRouter.of(context).pop(),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
