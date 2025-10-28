import 'package:ecommerce_supbase/features/home/presentation/view/home_view.dart';
import 'package:ecommerce_supbase/features/profile/presentation/view/profile_view.dart';
import 'package:ecommerce_supbase/features/settings/presentation/view/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeView(),

    Container(color: Colors.white),
     const SettingsView(),
    const ProfileView()
  ];
}
