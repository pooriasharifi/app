import 'package:flutter/services.dart';
import 'package:get/get.dart';



class SplashController extends GetxController{
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _handleScrean();
  }
  void _handleScrean()async{
    await Future.delayed(Duration(seconds: 3));
    Get.offNamed('/login');
  }

}