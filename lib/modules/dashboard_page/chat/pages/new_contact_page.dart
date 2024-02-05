import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/global_widgets/pages/loading_page.dart';
import 'package:resoce/modules/dashboard_page/chat/controllers/new_contact_controller.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/appbar/appbar_new_contact.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/new_contact/input_new_contact.dart';

class NewContact extends GetView<NewContactController> {
  const NewContact({super.key});

  @override
  Widget build(BuildContext context) {
    //
    //

    return Stack(
      children: [
        Scaffold(
          appBar: appbarNewContact(),
          backgroundColor: AppColors.background,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * .04),
            child: Form(
              key: controller.formNewContact,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height * .03),

                  // username
                  const UserNameInput(),

                  // email
                  const EmailInput(),

                  // fonction dans l'entreprise
                  const FunctionInput(),

                  //
                  const FunctionDropDown(),

                  //
                  //
                  const Spacer(),

                  const ButtonAddNewContact(),
                  SizedBox(height: Get.height * .05),
                ],
              ),
            ),
          ),
        ),

        // page de loading
        Obx(() => LoadingPage(pageLoading: controller.pageLoading.value)),
      ],
    );
  }
}
