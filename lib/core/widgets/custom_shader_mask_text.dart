import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShaderMaskText extends StatelessWidget {
  const CustomShaderMaskText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          end: Alignment.centerRight,
          begin: Alignment.centerLeft,
          colors: [
            Colors.purple.withAlpha(650),
            Colors.cyanAccent.withAlpha(200),
          ],
        ).createShader(bounds);
      },
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.w900,
            ),
      ),
    );
  }
}
