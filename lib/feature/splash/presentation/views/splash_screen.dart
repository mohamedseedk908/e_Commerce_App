import 'package:e_commerce_app/core/utils/app_assets.dart';
import 'package:e_commerce_app/feature/splash/presentation/views/widgets/custom_body_splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).push("/OnBoarding");
    });
    super.initState();
  }

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
