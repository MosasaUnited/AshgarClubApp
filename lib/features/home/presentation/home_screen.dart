import 'package:flutter/material.dart';
import 'package:shagra_club_app/features/home/presentation/screens/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: HomeScreenBody());
  }
}
