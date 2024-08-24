import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:segmented_button_slide/segmented_button_slide.dart';
import 'package:shagra_club_app/features/sports/presentation/screens/book_courts.dart';
import 'package:shagra_club_app/features/sports/presentation/screens/booked_appointment.dart';
import 'package:shagra_club_app/features/sports/presentation/screens/private_sessions.dart';

import '../../../../core/theme/colors.dart';

class SportsScreenBody extends StatefulWidget {
  const SportsScreenBody({super.key});

  @override
  State<SportsScreenBody> createState() => _SportsScreenBodyState();
}

class _SportsScreenBodyState extends State<SportsScreenBody> {
  int selectedOption = 0;

  void toggleOption() {
    setState(() {
      selectedOption = (selectedOption + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SegmentedButtonSlide(
          selectedEntry: selectedOption,
          onChange: (selected) => setState(
            () => selectedOption = selected,
          ),
          curve: Curves.easeInOut,
          entries: const [
            SegmentedButtonSlideEntry(
              icon: Icons.sports_soccer,
              label: 'Book Courts',
            ),
            SegmentedButtonSlideEntry(
              icon: Icons.sports_tennis,
              label: 'Private Sessions',
            ),
            SegmentedButtonSlideEntry(
              icon: Icons.book,
              label: 'Booked',
            ),
          ],
          colors: const SegmentedButtonSlideColors(
            barColor: Colors.transparent,
            backgroundSelectedColor: MyColors.secondaryColor,
          ),
          slideShadow: [
            BoxShadow(
              color: Colors.amber.withOpacity(1),
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ],
          margin: const EdgeInsets.all(8),
          height: 50.h,
          padding: const EdgeInsets.all(8),
          borderRadius: BorderRadius.circular(16),
          selectedTextStyle: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.amber,
            fontSize: 14.sp,
          ),
          unselectedTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 12.sp,
          ),
          hoverTextStyle: const TextStyle(
            color: Colors.orange,
          ),
        ),
        SizedBox(height: 16.h), // Add spacing between buttons and text
        Column(
          children: [
            if (selectedOption == 0)
              const BookCourts()
            else if (selectedOption == 1)
              const PrivateSessions()
            else
              const BookedAppointment()
          ],
        ),
      ],
    );
  }
}
