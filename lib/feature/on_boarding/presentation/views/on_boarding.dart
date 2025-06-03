import 'package:e_commerce_app/feature/on_boarding/presentation/views/widgets/custom_body.dart';
import 'package:e_commerce_app/feature/on_boarding/presentation/views/widgets/custom_container.dart';
import 'package:e_commerce_app/feature/on_boarding/presentation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:e_commerce_app/feature/on_boarding/presentation/views/widgets/get_button.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomContainer(),
          CustomBody(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          Column(
            children: [
              SizedBox(height: 600),
              CustomSmoothPageIndicator(controller: _controller),
              SizedBox(height: 30),
              GetButton(controller: _controller, currentIndex: currentIndex),
            ],
          ),
        ],
      ),
    );
  }
}

