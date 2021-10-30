
import 'package:get/get.dart';
import 'package:girgitton_courier_mobile/controllers/profile/profile_controller.dart';

class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }

}