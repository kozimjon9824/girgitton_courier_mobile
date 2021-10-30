import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:girgitton_courier_mobile/controllers/profile/profile_controller.dart';

import 'widgets/top_profile_widget.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            TopProfileWidget()
          ],
        ),
      ),
    );
  }
}
