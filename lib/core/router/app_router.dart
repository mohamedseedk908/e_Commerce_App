
import 'package:e_commerce_app/feature/on_boarding/presentation/views/on_boarding.dart';
import 'package:e_commerce_app/feature/splash/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: "/OnBoarding",
      builder: (context, state) => const OnBoarding(),
    ),
  ],
);
