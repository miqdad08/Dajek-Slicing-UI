import 'package:get/get.dart';

import 'package:dajek/app/modules/home/bindings/home_binding.dart';
import 'package:dajek/app/modules/home/views/home_view.dart';
import 'package:dajek/app/modules/login_screen/bindings/login_screen_binding.dart';
import 'package:dajek/app/modules/login_screen/views/login_screen_view.dart';
import 'package:dajek/app/modules/main_screen/bindings/main_screen_binding.dart';
import 'package:dajek/app/modules/main_screen/views/main_screen_view.dart';
import 'package:dajek/app/modules/onboarding_screen/bindings/onboarding_screen_binding.dart';
import 'package:dajek/app/modules/onboarding_screen/views/onboarding_screen_view.dart';
import 'package:dajek/app/modules/signup/bindings/signup_binding.dart';
import 'package:dajek/app/modules/signup/views/signup_view.dart';
import 'package:dajek/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:dajek/app/modules/splash_screen/views/splash_screen_view.dart';
import 'package:dajek/app/modules/transaction/bindings/transaction_binding.dart';
import 'package:dajek/app/modules/transaction/views/transaction_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SCREEN,
      page: () => OnboardingScreenView(),
      binding: OnboardingScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION,
      page: () => TransactionView(),
      binding: TransactionBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_SCREEN,
      page: () => MainScreenView(),
      binding: MainScreenBinding(),
    ),
  ];
}
