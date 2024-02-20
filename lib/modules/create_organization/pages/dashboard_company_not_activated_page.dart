import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/global_widgets/buttons/button_flat.dart';
import 'package:resoce/modules/create_organization/controllers/controller_create_company.dart';
import 'package:resoce/modules/create_organization/widgets/appbar_dashboard_not_activated.dart';
import 'package:resoce/modules/create_organization/widgets/dashboard_not_activated/title_text.dart';
import 'package:resoce/modules/create_organization/widgets/dashboard_not_activated/widget_info_connection.dart';

class DashboardCompanyNotActivated extends GetView<CreateCompanyController> {
  const DashboardCompanyNotActivated({super.key});

  @override
  Widget build(BuildContext context) {
    const loginId = 'DB5-87F';
    const password = 'DB5-87F';
    const sexe = 'm';
    const username = 'Idriss Jordane';

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: appBarHomeNotActivated(
        titleAppbar: 'welcome',
        sexe: sexe,
        username: username,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height * .03),

                //
                //
                Center(
                  child: Icon(
                    Icons.pending_actions,
                    color: AppColors.primaryColor,
                    size: Get.width * .15,
                  ),
                ),
                SizedBox(height: Get.height * .025),

                //
                SizedBox(height: Get.height * .005),
                const ResultatText(
                    title: 'Entreprise creer et enregister avec success',
                    success: true),
                const ResultatText(
                    title: 'Profil utilisateur creer avec succes',
                    success: true),
                const ResultatText(
                    title: 'Activation de lentrepise', success: false),

                SizedBox(height: Get.height * .05),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
                  child: Text(
                    "Votre compte sera activé sous peu. Cette opération peut prendre jusqu'à 30 minutes. Merci pour votre patience.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: Get.width * .035,
                    ),
                  ),
                ),
                //
                //
                SizedBox(height: Get.height * .06),
                const Divider(),
                SizedBox(height: Get.height * .025),

                const TitleText(title: 'Vos informations de connexion'),
                SizedBox(height: Get.height * .02),

                const WidgetInfoConnection(title: 'login_id', value: loginId),
                const WidgetInfoConnection(title: 'password', value: password),

                SizedBox(height: Get.height * .025),

                const Divider(),
                SizedBox(height: Get.height * .06),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * .03),
                  child: Text(
                    "Actualiser pour mettre verifier le status d'activation de votre entreprise",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: Get.width * .035,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * .055),
                ButtonFlat(
                    startIcon: Icons.replay_outlined,
                    callback: () {},
                    title: 'Actualiser')
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
