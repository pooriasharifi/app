import 'package:app/Screans/controllers/home/homeController.dart';
import 'package:get/get.dart';



class MenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(),
    );
    Get.lazyPut<HomeController>(() => HomeController());
  }
}