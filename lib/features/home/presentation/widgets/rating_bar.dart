import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          String? message;
          if (rating <= 3) {
            message = 'We are sorry to hear that, we will contact you soon';
          } else if (rating <= 4) {
            message =
                'We will try to improve our services to get you more satisfying';
          } else if (rating <= 5) {
            message =
                'Thank you! We are glad to hear that you are comfortable with us';
          }

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Center(
                child: Text(
                  message!,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                ),
              ),
              backgroundColor: Colors.pinkAccent,
              duration: const Duration(seconds: 3),
            ),
          );
        },
      ),
    );
  }
}
