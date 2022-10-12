import 'package:get/get.dart';

import 'package:dajek/app/modules/checkout_screen/bindings/checkout_screen_binding.dart';
import 'package:dajek/app/modules/checkout_screen/views/checkout_screen_view.dart';
import 'package:dajek/app/modules/detail_screen/bindings/detail_screen_binding.dart';
import 'package:dajek/app/modules/detail_screen/views/detail_screen_view.dart';
import 'package:dajek/app/modules/drivers_status/bindings/drivers_status_binding.dart';
import 'package:dajek/app/modules/drivers_status/views/drivers_status_view.dart';
import 'package:dajek/app/modules/food_screen/bindings/food_screen_binding.dart';
import 'package:dajek/app/modules/food_screen/views/food_screen_view.dart';
import 'package:dajek/app/modules/home/bindings/home_binding.dart';
import 'package:dajek/app/modules/home/views/home_view.dart';
import 'package:dajek/app/modules/login_screen/bindings/login_screen_binding.dart';
import 'package:dajek/app/modules/login_screen/views/login_screen_view.dart';
import 'package:dajek/app/modules/main_screen/bindings/main_screen_binding.dart';
import 'package:dajek/app/modules/main_screen/views/main_screen_view.dart';
import 'package:dajek/app/modules/nearby_screen/bindings/nearby_screen_binding.dart';
import 'package:dajek/app/modules/nearby_screen/views/nearby_screen_view.dart';
import 'package:dajek/app/modules/onboarding_screen/bindings/onboarding_screen_binding.dart';
import 'package:dajek/app/modules/onboarding_screen/views/onboarding_screen_view.dart';
import 'package:dajek/app/modules/order_driver/bindings/order_driver_binding.dart';
import 'package:dajek/app/modules/order_driver/views/order_driver_view.dart';
import 'package:dajek/app/modules/payment_method/bindings/payment_method_binding.dart';
import 'package:dajek/app/modules/payment_method/views/payment_method_view.dart';
import 'package:dajek/app/modules/search/bindings/search_binding.dart';
import 'package:dajek/app/modules/search/views/search_view.dart';
import 'package:dajek/app/modules/search_driver/bindings/search_driver_binding.dart';
import 'package:dajek/app/modules/search_driver/views/search_driver_view.dart';
import 'package:dajek/app/modules/signup/bindings/signup_binding.dart';
import 'package:dajek/app/modules/signup/views/signup_view.dart';
import 'package:dajek/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:dajek/app/modules/splash_screen/views/splash_screen_view.dart';
import 'package:dajek/app/modules/status_ordering_screen/bindings/status_ordering_screen_binding.dart';
import 'package:dajek/app/modules/status_ordering_screen/views/status_ordering_screen_view.dart';
import 'package:dajek/app/modules/success_screen/bindings/success_screen_binding.dart';
import 'package:dajek/app/modules/success_screen/views/success_screen_view.dart';
import 'package:dajek/app/modules/transaction/bindings/transaction_binding.dart';
import 'package:dajek/app/modules/transaction/views/transaction_view.dart';
import 'package:dajek/model/food_model.dart';

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
    GetPage(
      name: _Paths.FOOD_SCREEN,
      page: () => FoodScreenView(),
      binding: FoodScreenBinding(),
    ),
    GetPage(
      name: _Paths.NEARBY_SCREEN,
      page: () => NearbyScreenView(),
      binding: NearbyScreenBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    // GetPage(
    //   name: _Paths.DETAIL_SCREEN,
    //   page: () => DetailScreenView(food : food_data),
    //   binding: DetailScreenBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CHECKOUT_SCREEN,
    //   page: () => CheckoutScreenView(),
    //   binding: CheckoutScreenBinding(),
    // ),
    GetPage(
      name: _Paths.PAYMENT_METHOD,
      page: () => PaymentMethodView(),
      binding: PaymentMethodBinding(),
    ),
    GetPage(
      name: _Paths.SUCCESS_SCREEN,
      page: () => SuccessScreenView(),
      binding: SuccessScreenBinding(),
    ),
    // GetPage(
    //   name: _Paths.SEARCH_DRIVER,
    //   page: () => SearchDriverView(),
    //   binding: SearchDriverBinding(),
    // ),
    GetPage(
      name: _Paths.STATUS_ORDERING_SCREEN,
      page: () => StatusOrderingScreenView(),
      binding: StatusOrderingScreenBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_DRIVER,
      page: () => OrderDriverView(),
      binding: OrderDriverBinding(),
    ),
    GetPage(
      name: _Paths.DRIVERS_STATUS,
      page: () => DriversStatusView(),
      binding: DriversStatusBinding(),
    ),
  ];
}
