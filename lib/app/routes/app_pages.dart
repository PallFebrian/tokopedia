import 'package:get/get.dart';

import 'package:tokopedia/app/modules/Login/bindings/login_binding.dart';
import 'package:tokopedia/app/modules/Login/views/login_view.dart';
import 'package:tokopedia/app/modules/Register/bindings/register_binding.dart';
import 'package:tokopedia/app/modules/Register/views/register_view.dart';
import 'package:tokopedia/app/modules/ResetPassword/bindings/reset_password_binding.dart';
import 'package:tokopedia/app/modules/ResetPassword/views/reset_password_view.dart';
import 'package:tokopedia/app/modules/Splashscreen/bindings/splashscreen_binding.dart';
import 'package:tokopedia/app/modules/Splashscreen/views/splashscreen_view.dart';
import 'package:tokopedia/app/modules/Verification/bindings/verification_binding.dart';
import 'package:tokopedia/app/modules/Verification/views/verification_view.dart';
import 'package:tokopedia/app/modules/home/bindings/home_binding.dart';
import 'package:tokopedia/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION,
      page: () => VerificationView(),
      binding: VerificationBinding(),
    ),
  ];
}
