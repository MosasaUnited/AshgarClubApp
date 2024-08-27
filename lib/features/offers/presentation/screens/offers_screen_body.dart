import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:segmented_button_slide/segmented_button_slide.dart';
import 'package:shagra_club_app/features/offers/presentation/screens/vouchers_view.dart';

import '../../../../core/theme/colors.dart';
import 'offers_view.dart';

class OffersScreenBody extends StatefulWidget {
  const OffersScreenBody({super.key});

  @override
  State<OffersScreenBody> createState() => _OffersScreenBodyState();
}

class _OffersScreenBodyState extends State<OffersScreenBody> {
  int selectedOption = 0;

  void toggleOfferVoucher() {
    setState(() {
      selectedOption = (selectedOption + 1) % 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SegmentedButtonSlide(
            selectedEntry: selectedOption,
            onChange: (selected) => setState(
              () => selectedOption = selected,
            ),
            curve: Curves.easeInOut,
            entries: const [
              SegmentedButtonSlideEntry(
                label: 'Offers',
              ),
              SegmentedButtonSlideEntry(
                label: 'Vouchers',
              ),
            ],
            colors: const SegmentedButtonSlideColors(
              barColor: Colors.transparent,
              backgroundSelectedColor: Colors.transparent,
            ),
            slideShadow: const [
              BoxShadow(
                color: MyColors.myTeal,
              ),
            ],
            margin: const EdgeInsets.all(8),
            height: 50.h,
            padding: const EdgeInsets.all(8),
            borderRadius: BorderRadius.circular(16),
            selectedTextStyle: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20.sp,
              fontStyle: FontStyle.italic,
            ),
            unselectedTextStyle: TextStyle(
              fontWeight: FontWeight.w700,
              color: MyColors.myTeal,
              fontSize: 16.sp,
            ),
            hoverTextStyle: const TextStyle(
              color: Colors.orange,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Column(
            children: [
              if (selectedOption == 0)
                const OffersView()
              else
                const VouchersView()
            ],
          )
        ],
      ),
    );
  }
}
