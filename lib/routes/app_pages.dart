
import 'package:get/get.dart';
import 'package:girgitton_courier_mobile/bindings/profile/profile_binding.dart';
import 'package:girgitton_courier_mobile/ui/main/profile/profile_page.dart';

part './app_routes.dart';

class AppPages{
  static final pages=[
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
  ];
}