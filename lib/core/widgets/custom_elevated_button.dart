import 'package:e_commerce_app/core/utils/app_strings.dart';
import 'package:e_commerce_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.height, this.width, this.name, this.onPressed});
  final double? height;
  final double? width;
  final String? name;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 53,
      width: width ?? 193,
      child: ElevatedButton(
        onPressed: onPressed ?? () {
          // انتقل للشاشة التالية مثلاً
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          side:  BorderSide(color: Colors.white,width: width ?? 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        child: Text(
          name ?? AppStrings.getStarted,
          style: CustomTextStyles.font16BoldColorWhite,
        ),
      ),
    );
  }
}
