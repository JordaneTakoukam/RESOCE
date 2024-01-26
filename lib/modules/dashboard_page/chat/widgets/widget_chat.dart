import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/core/values/colors/color_app.dart';
import 'package:resoce/routes/app_pages.dart';

class WidgetChat extends StatelessWidget {
  final Map<String, dynamic> listMessage;
  const WidgetChat({
    super.key,
    required this.listMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * .015),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            splashColor: AppColors.clickColor,
            focusColor: AppColors.clickColor,
            hoverColor: AppColors.clickColor,
            highlightColor: AppColors.clickColor,
            onTap: () {
              Get.toNamed(Routes.MESSAGE);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: Get.height * .0,
                horizontal: Get.width * .02,
              ),
              child: Column(
                children: [
                  SizedBox(height: Get.height * .01),
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          SizedBox(
                            height: Get.width * .1,
                            width: Get.width * .1,
                            child: CircleAvatar(
                              child: Image.asset(Chemin.icone.avatar),
                            ),
                          ),
                          if (listMessage['online'])
                            Container(
                              padding: EdgeInsets.all(Get.width * .01),
                              decoration: const BoxDecoration(
                                  color: AppColors.greenOnline,
                                  shape: BoxShape.circle),
                            ),
                        ],
                      ),
                      SizedBox(width: Get.width * .02),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: Get.width * .8,
                                child: Row(
                                  children: [
                                    Text(
                                      listMessage['destinataireName']
                                          .toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: Get.width * .033,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: Get.height * .005),
                              SizedBox(
                                width: Get.width * .8,
                                child: Row(
                                  children: [
                                    Text(listMessage['lastMessage'].toString()),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: Get.width * .12,
                      top: Get.height * .01,
                    ),
                    child: const Divider(
                      color: Color.fromARGB(255, 218, 218, 219),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        //
        //
        Padding(
          padding: EdgeInsets.only(
            bottom: Get.height * .03,
            right: Get.width * .04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                formatDate(listMessage['sendTime'].toString()),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Get.width * .027,
                ),
              ),
              SizedBox(height: Get.height * .002),
              !(listMessage['unreadMessages'].toString() == '0')
                  ? Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(Get.width * .021),
                      child: Text(
                        listMessage['unreadMessages'].toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.width * .02,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : listMessage['messageStatus'] == '2'
                      ? Icon(
                          Icons.done_all,
                          size: Get.width * .048,
                          color: AppColors.greenOnline,
                        )
                      : listMessage['messageStatus'] == '1'
                          ? Icon(
                              Icons.done_all,
                              size: Get.width * .048,
                              color: AppColors.iconColor,
                            )
                          : Icon(
                              Icons.check,
                              size: Get.width * .048,
                              color: AppColors.iconColor,
                            ),
            ],
          ),
        ),
      ],
    );
  }
}
