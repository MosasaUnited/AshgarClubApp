import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.prefix, required this.title});

  final String prefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          prefix,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w900,
              ),
        ),
        SizedBox(
          width: 5.w,
        ),
        kIsWeb
            ? ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(
                      end: Alignment.centerRight,
                      begin: Alignment.centerLeft,
                      colors: [
                        Colors.pink,
                        Colors.cyanAccent,
                      ]).createShader(bounds);
                },
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              )
            : Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w900,
                    ),
              ),
      ],
    );
  }
}
