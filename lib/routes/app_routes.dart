// ignore_for_file: constant_identifier_names

part of './app_pages.dart';

abstract class Routes {
  Routes._();

  static const String SPLASHSCREEN = '/splashscreen';
  static const String ONBOARDING = '/page_de_slie';
  static const String SIGNIN = '/connexion';
  static const String RESETPASSWORD = '/reinitialiser_le_mdp';
  static const String CHOOSELANGUAGE = '/choisir_la_langue';
  static const String FOOTPRINT = '/deverouiller_avec_empreinte';
  static const String PIN = '/pin_de_deverouillage';
  static const String DASHBOARD = '/tablea-de-bord';
  static const String MESSAGE = '/PAGE_MESSAGE_DISCUSSION';
  static const String CONTACTPAGE = '/PAGE_LIST_CLIENT';
  static const String NEWCONTACT = '/page-ajouter-nouveau-contact';
  static const String DETAILCONTACT = '/detail-contact';
  //create company
  static const String ABONNEMENTCREATECOMPANY = '/abonnement-creer-company';
  static const String CONFIRMCREATECOMPANY = '/confirmer-creation-companie';
  static const String CREATEOWNERPROFILE =
      '/creer-profil-proprietaire-entreprise';
  static const String DASHBOARDCOMPANYNOTACTIVATED =
      '/tableaudeboard-companie-non-activee';
  static const String SLIDERSCREATECOMPANY = '/sliders-creer-company';
  static const String COUNTRYPAGE = '/page-choix-pays';
}
