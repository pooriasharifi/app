import 'package:get/get.dart';


class HomeController extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

    @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {}


  navigateToPage(int index){
    switch (index){
      case 0 :{Get.toNamed('/archive');}
      break;
      case 1 :{Get.toNamed('/links');}
      break;
      case 2 :{Get.toNamed('/textEditor');}
      break;
      case 3 :{Get.toNamed('/setting');}
      break;
      case 4 :{Get.toNamed('/accountBalance');}

      break;
    }
  }

}