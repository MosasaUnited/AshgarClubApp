import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/models/contact_link_model.dart';

class ProfileIconButton extends StatelessWidget {
  final ContactLink link;

  const ProfileIconButton({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        if (link.url.startsWith('mailto:')) {
          // Handle email link with error handling
          try {
            final Uri email =
                Uri.parse(link.url); // Remove query parameters if needed
            if (await canLaunchUrl(email)) {
              await launchUrl(email);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'No email app found. Please install one.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            }
          } catch (error) {
            print('Error launching email: $error');
          }
        } else {
          // Handle other links
          if (await canLaunchUrl(Uri.parse(link.url))) {
            launchUrl(Uri.parse(link.url));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  'Not Found , Please Check The Url',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      },
      icon: Image.asset(link.iconAssetPath),
    );
  }
}
