import 'package:e_commerce_app/core/utils/app_assets.dart';
import 'package:e_commerce_app/core/utils/app_strings.dart';

class OnBoardingModel {
  final String image;
  final String text;
  final String supTitle;

  OnBoardingModel({
    required this.image,
    required this.text,
    required this.supTitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    image: AppAssets.onBoarding1,
    text: AppStrings.onBoardingText1,
    supTitle: AppStrings.onBoardingSupText1,
  ),
  OnBoardingModel(
    image: AppAssets.onBoarding2,
    text: AppStrings.onBoardingText2,
    supTitle: AppStrings.onBoardingSupText2,
  ),
  OnBoardingModel(
    image: AppAssets.onBoarding3,
    text: AppStrings.onBoardingText3,
    supTitle: AppStrings.onBoardingSupText3,
  ),
];
