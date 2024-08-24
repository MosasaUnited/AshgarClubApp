import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/constants/image_assets.dart';

class ImageSliderWithIndicator extends StatefulWidget {
  const ImageSliderWithIndicator({super.key});

  @override
  State<ImageSliderWithIndicator> createState() =>
      _ImageSliderWithIndicatorState();
}

class _ImageSliderWithIndicatorState extends State<ImageSliderWithIndicator> {
  final List<String> imgList = [
    ImageAssets.eventFirstImage,
    ImageAssets.eventSecondImage,
    ImageAssets.eventThirdImage,
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200.h,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(
                () {
                  current = index;
                },
              );
            },
          ),
          items: imgList
              .map(
                (item) => Center(
                  child: Image.asset(item,
                      fit: BoxFit.fitWidth, width: double.infinity),
                ),
              )
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map(
            (url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: current == index
                      ? const Color.fromRGBO(0, 0, 0, 0.9)
                      : const Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
