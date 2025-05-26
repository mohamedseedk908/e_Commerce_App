import 'package:flutter/cupertino.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';

class CustomBodySplash extends StatelessWidget {
  const CustomBodySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: 528,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Text(
            AppStrings.welcome,
            style: CustomTextStyles.font25BoldColorWhite,
          ),
          const SizedBox(height: 8),
          Text(
            AppStrings.theHomeForAFashionista,
            style: CustomTextStyles.font16BoldColorWhite,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          CustomElevatedButton(),
        ],
      ),
    );
  }
}