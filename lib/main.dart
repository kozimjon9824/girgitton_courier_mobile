import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:girgitton_courier_mobile/bindings/profile/profile_binding.dart';
import 'package:girgitton_courier_mobile/translations/app_translation.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'core/theme/app_theme.dart';
import 'data/provider/api_client.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: const [GestureType.onTap],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: ProfileBinding(),
        initialRoute: Routes.profile,
        theme: appThemeData,
        navigatorKey: ApiClient.alice.getNavigatorKey(),
        defaultTransition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 100),
        getPages: AppPages.pages,
        // locale: Locale(currentLocale),
        translationsKeys: AppTranslations.translations,
      ),
    );
  }
}
