import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class ExitShowDialog extends StatelessWidget {
  const ExitShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(15),
      title: const Text('ُ'),
      icon: Icon(Icons.add_alert, color: Colors.amberAccent.shade700),
      content: const Text(
        'هل تريد فعلا الخروج ؟',
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
          onPressed: () => GoRouter.of(context).pop(),
          child: const Text('إلغاء'),
        ),
        TextButton(
          onPressed: () => SystemNavigator.pop(),
          child: const Text('موافق'),
        ),
      ],
    );
  }
}
