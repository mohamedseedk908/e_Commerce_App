
import 'package:e_commerce_app/feature/on_boarding/presentation/views/on_boarding.dart';
import 'package:e_commerce_app/feature/splash/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

import '../../feature/sign_in/presentation/views/sign_in.dart';
import '../../feature/sign_up/presentation/views/sign_up.dart';

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
    GoRoute(
      path: "/SignUp",
      builder: (context, state) => const SignUp(),
    ),
    GoRoute(
      path: "/SignIn",
      builder: (context, state) => const SignIn(),
    ),
  ],
);
