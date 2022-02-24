import 'package:flutter/services.dart';
import 'package:get/get.dart';



class SplashController extends GetxController{
  bool firstLogin = true;
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _handleScrean();
  }
  void _handleScrean()async{
    await Future.delayed(Duration(seconds: 3));
    if (firstLogin==true){
      Get.offNamed('/menu');
    }else{
      Get.offNamed('/login');

    }

  }

}