import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/text_styles.dart';
import '../../../data/models/on_boarding_models.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key, this.controller});
  final controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: onBoardingData.length,
      itemBuilder: (context, index) {
        final data = onBoardingData[index];
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 90),
                Text(
                  data.text,
                  style: CustomTextStyles.font20BoldColorWhite,
                ),
                const SizedBox(height: 17),
                Text(
                  data.supTitle,
                  style: CustomTextStyles.font14BoldColorWhite,
                ),
                const SizedBox(height: 67),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 57,
                  ).copyWith(bottom: 50),
                  child: Container(
                    height: 368.h,
                    width: 261.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.ofWight,
                      image: DecorationImage(
                        image: AssetImage(data.image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}