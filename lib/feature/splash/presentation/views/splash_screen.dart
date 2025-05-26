import 'package:e_commerce_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_body_splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 812,
      width: 375,
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset(AppAssets.imageSplash, fit: BoxFit.cover),
            ),
            Container(color: Colors.black.withOpacity(0.3)),
            CustomBodySplash(),
          ],
        ),
      ),
    );
  }
}
