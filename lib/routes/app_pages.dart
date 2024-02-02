import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:resoce/modules/dashboard_page/chat/pages/message_page.dart';
import 'package:resoce/modules/dashboard_page/chat/pages/contact_page.dart';
import 'package:resoce/modules/lanugage_choose/page.dart';
import 'package:resoce/modules/dashboard_menu_page/binding.dart';
import 'package:resoce/modules/dashboard_menu_page/menu_dashboard_page.dart';
import 'package:resoce/modules/onboardingscreen/binding.dart';
import 'package:resoce/modules/onboardingscreen/page.dart';
import 'package:resoce/modules/reset_password/binding.dart';
import 'package:resoce/modules/reset_password/page.dart';
import 'package:resoce/modules/signin/binding.dart';
import 'package:resoce/modules/signin/page.dart';
import 'package:resoce/modules/splashscreen/binding.dart';
import 'package:resoce/modules/splashscreen/page.dart';
import 'package:resoce/routes/goto.dart';

part './app_routes.dart';

abstract class AppPages {
  AppPages._();

  static final pages = [
    goTo(
      name: Routes.SPLASHSCREEN,
      page: const SplashScreenPage(),
      binding: SplashScreenBinding(),
      transition: Transition.fadeIn,
    ),
    goTo(
      name: Routes.ONBOARDING,
      page: const OnBoardingPage(),
      binding: OnBoardingBinding(),
      transition: Transition.fade,
    ),
    goTo(
      name: Routes.SIGNIN,
      page: const SignInPage(),
      binding: SignInBinding(),
      transition: Transition.fade,
    ),
    goTo(
      name: Routes.RESETPASSWORD,
      page: const ResetPasswordPage(),
      binding: ResetPassordBinding(),
      transition: Transition.rightToLeft,
    ),
    goTo(
      name: Routes.CHOOSELANGUAGE,
      page: const ChooseLangPage(),
      transition: Transition.fade,
    ),
    goTo(
      name: Routes.DASHBOARD,
      page: const Dashboard(),
      transition: Transition.fade,
      binding: DashboardBinding(),
    ),
    goTo(
      name: Routes.MESSAGE,
      page: const MessagePage(),
      transition: Transition.rightToLeft,
    ),
    goTo(
      name: Routes.CONTACTPAGE,
      page: const ContactPage(),
      transition: Transition.rightToLeft,
    ),
  ];
}
