import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/text_styles.dart';
import 'package:e_commerce_app/feature/on_boarding/data/models/on_boarding_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/widgets/custom_elevated_button.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: 351.h,
              width: 375.w,
              color: AppColors.darkGray,
            ),
          ),
          PageView.builder(
            controller: _controller,
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
          ),
          Column(
            children: [
              SizedBox(height: 600),
              SmoothPageIndicator(
                controller: _controller,
                count: onBoardingData.length,
                effect: WormEffect(
                  activeDotColor: Colors.red,
                  dotColor: Colors.white54,
                  dotHeight: 10.h,
                  dotWidth: 10.w,
                ),
              ),
              SizedBox(height: 30),
              Center(child: CustomElevatedButton()),
            ],
          ),
        ],
      ),
    );
  }
}
