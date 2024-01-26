import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/splashscreen/controller.dart';

class SplashScreenPage extends GetView<SplashScreenController> {
  const SplashScreenPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('SplashScreenPage')),

    body: SafeArea(
      child: Text('SplashScreenController'))
    );
  }
}