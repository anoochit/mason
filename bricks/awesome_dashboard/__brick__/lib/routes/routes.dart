import 'package:get/get.dart';

import '../middlewares/routeguard.dart';
import '../pages/home/home.dart';
import '../pages/signin/signin.dart';
import '../pages/signup/signup.dart';

final routes = [
  GetPage(
    title: 'Dashboard',
    name: '/',
    page: () => const HomePage(),
    middlewares: [
      RouteGuard(),
    ],
  ),
  GetPage(
    title: 'Sign In',
    name: '/signin',
    page: () => const SignInPage(),
  ),
  GetPage(
    title: 'Sign Up',
    name: '/signup',
    page: () => const SignUpPage(),
  ),
];
