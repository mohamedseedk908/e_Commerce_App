import 'package:e_commerce_app/core/functione/navigation.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../data/models/on_boarding_models.dart';

class GetButton extends StatelessWidget {
  const GetButton({
    super.key,
    required this.currentIndex,
    required this.controller,
  });
  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Center(
        child: CustomElevatedButton(
          onPressed: () {
            customReplacementNavigate(context, "/SignUp");
          },
        ),
      );
    } else {
      return Center(
        child: CustomElevatedButton(
          name: "Next",
          onPressed: () {
            controller.nextPage(
              duration: Duration(milliseconds: 200),
              curve: Curves.bounceIn,
            );
          },
        ),
      );
    }
  }
}
