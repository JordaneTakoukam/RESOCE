import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/dashboard_page/annonuncement/pages/announcement_page.dart';
import 'package:resoce/modules/dashboard_page/call/pages/call_page.dart';
import 'package:resoce/modules/dashboard_page/chat/pages/chat_page.dart';
import 'package:resoce/modules/dashboard_menu_page/repository.dart';
import 'package:resoce/modules/dashboard_page/group/pages/group_page.dart';
import 'package:resoce/modules/dashboard_page/setting/pages/setting_page.dart';

class DashboardController extends GetxController {
  var repository = MenuDashBoardRepository(); // page initiale par defaut
  var pageIndex = 0.obs;
  // Rx<UserModel> userData = userModelInstance().obs;
  // Rx<BalanceModel> balanceClient = balanceModelInstance().obs;

  // mettre a jour la page courante
  updatePage(int index) {
    pageIndex.value = index;
  }

  final listePage = <Widget>[
    const ChatPage(),
    const GroupPage(),
    const CallPage(),
    const AnnouncementPage(),
    const SettingPage(),
  ].obs;

  getCurentPage() => listePage[pageIndex.value];

  // information de l'user connecter
  RxList<int> partyAmount = [200, 300].obs;
  RxInt choiceNumberBottle = (0).obs;

  // void setUserData(UserModel data) {
  //   userData.value = data;
  // }

  // setNumberBottleGame(int value) {
  //   choiceNumberBottle.value = value;
  // }

  // setBalanceClient(BalanceModel balance) {
  //   balanceClient.value = balance;
  // }

  RxBool showApp = true.obs;
  setShowApp(bool value) {
    showApp.value = value;
  }
}
