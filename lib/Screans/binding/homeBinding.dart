import 'package:app/Screans/controllers/homeController.dart';
import 'package:get/get.dart';



class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(),
    );
  }
}