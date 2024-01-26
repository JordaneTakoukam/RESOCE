import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/global_widgets/appbar/appbar_home.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/title_msg.dart';
import 'package:resoce/modules/dashboard_page/group/controller/group_controller.dart';

class GroupPage extends GetView<GroupController> {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarHome(titleAppbar: 'groups'),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: Get.width * .04),
        children: [
          TitleMsgChat(title: 'Vos groupes epingler', pinned: true),

          Stack(
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
                    // Get.toNamed(Routes.MESSAGE);
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
                                            'Departement informatique',
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
                                      child: const Row(
                                        children: [
                                          Text('Hello comment tu vas ?'),
                                          Spacer(),
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
                      '16:25',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * .027,
                      ),
                    ),
                    SizedBox(height: Get.height * .002),
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(Get.width * .018),
                      child: Text(
                        '10',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.width * .025,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          //
          //
          //

          //
          //
          //
          SizedBox(height: Get.height * .02),
          const TitleMsgChat(title: 'TOUS VOS GROUPES', pinned: false),

          Stack(
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
                    // Get.toNamed(Routes.MESSAGE);
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
                                            'Projet ONU',
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
                                      child: const Row(
                                        children: [
                                          Text('Le projet avance bien !'),
                                          Spacer(),
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
                      '19:40',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * .027,
                      ),
                    ),
                    SizedBox(height: Get.height * .002),
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(Get.width * .018),
                      child: Text(
                        '85',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.width * .025,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          //
          //
          //

          Stack(
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
                    // Get.toNamed(Routes.MESSAGE);
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
                                            'Stagiaire academique',
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
                                      child: const Row(
                                        children: [
                                          Text('Bonsoir a tous'),
                                          Spacer(),
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
                      '09:50',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * .027,
                      ),
                    ),
                    SizedBox(height: Get.height * .002),
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(Get.width * .018),
                      child: Text(
                        '15',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.width * .025,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
