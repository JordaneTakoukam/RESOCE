import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:resoce/modules/create_organization/binding/create_company_binding.dart';
import 'package:resoce/modules/create_organization/pages/abonnement_page.dart';
import 'package:resoce/modules/create_organization/pages/confirm_create_company_page.dart';
import 'package:resoce/modules/create_organization/pages/create_owner_profile.dart';
import 'package:resoce/modules/create_organization/pages/dashboard_company_not_activated_page.dart';
import 'package:resoce/modules/create_organization/pages/slider_create_company_page.dart';
import 'package:resoce/modules/create_organization/pages/sub_sliders_pages/country_page.dart';
import 'package:resoce/modules/dashboard_page/chat/pages/message_page.dart';
import 'package:resoce/modules/dashboard_page/chat/pages/contact_page.dart';
import 'package:resoce/modules/dashboard_page/chat/pages/new_contact_page.dart';
import 'package:resoce/modules/lanugage_choose/page.dart';
import 'package:resoce/modules/dashboard_menu_page/binding.dart';
import 'package:resoce/modules/dashboard_menu_page/menu_dashboard_page.dart';
import 'package:resoce/modules/onboardingscreen/page.dart';
import 'package:resoce/modules/reset_password/binding.dart';
import 'package:resoce/modules/reset_password/page.dart';
import 'package:resoce/modules/signin/binding.dart';
import 'package:resoce/modules/signin/signin_page.dart';
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
      transition: Transition.fadeIn,
    ),
    goTo(
      name: Routes.SIGNIN,
      page: const SignInPage(),
      binding: SignInBinding(),
      transition: Transition.fadeIn,
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
      transition: Transition.fadeIn,
    ),
    goTo(
      name: Routes.DASHBOARD,
      page: const Dashboard(),
      transition: Transition.fadeIn,
      binding: DashboardBinding(),
    ),
    goTo(
      name: Routes.MESSAGE,
      page: const MessagePage(),
      transition: Transition.rightToLeft,
      transitionDuration: 200,
    ),
    goTo(
      name: Routes.CONTACTPAGE,
      page: const ContactPage(),
      transition: Transition.rightToLeft,
      transitionDuration: 200,
    ),
    goTo(
      name: Routes.NEWCONTACT,
      page: const NewContact(),
      transition: Transition.rightToLeft,
      transitionDuration: 200,
    ),

    // creer une companie
    goTo(
      name: Routes.ABONNEMENTCREATECOMPANY,
      page: const AbonnementCreateCompanyPage(),
      transition: Transition.rightToLeft,
      transitionDuration: 200,
    ),
    goTo(
      name: Routes.CONFIRMCREATECOMPANY,
      page: const ConfirmCreateCompanyPage(),
      transition: Transition.rightToLeft,
      transitionDuration: 200,
    ),
    goTo(
      name: Routes.CREATEOWNERPROFILE,
      page: const CreateOwnerProfilePage(),
      transition: Transition.rightToLeft,
      transitionDuration: 200,
    ),
    goTo(
      name: Routes.DASHBOARDCOMPANYNOTACTIVATED,
      page: const DashboardCompanyNotActivated(),
      transition: Transition.rightToLeft,
      transitionDuration: 200,
    ),
    goTo(
      name: Routes.SLIDERSCREATECOMPANY,
      page: const SlidersCreateCompanyPage(),
      transition: Transition.rightToLeft,
      transitionDuration: 200,
      binding: CreateCompanyBiging(),
    ),

    goTo(
      name: Routes.COUNTRYPAGE,
      page: const CountryPage(),
      transition: Transition.fadeIn,
      transitionDuration: 200,
    ),
  ];
}
