import 'package:get/get.dart';
import 'package:girgitton_courier_mobile/controllers/home/home_controller.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(),fenix: true);
  }

}