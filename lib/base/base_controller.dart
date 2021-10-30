
import 'package:get/get.dart';

class BaseController extends GetxController{
  bool _isLoading = false;

  void setLoading(bool value){
    _isLoading = value;
    update();
  }

  void showError(String error){
    Get.snackbar('Error', error);
  }

  void showMessage(String message){
    Get.snackbar('Message', message);
  }

  bool get isLoading => _isLoading;
}