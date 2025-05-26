import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../data/models/on_boarding_models.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({super.key, this.controller});
  final controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: onBoardingData.length,
      effect: WormEffect(
        activeDotColor: Colors.red,
        dotColor: Colors.white54,
        dotHeight: 10.h,
        dotWidth: 10.w,
      ),
    );
  }
}