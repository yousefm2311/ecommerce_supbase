import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/widgets/drawer.dart';
import 'package:ecommerce_supbase/core/utils/widgets/icon_broken.dart';
import 'package:ecommerce_supbase/features/bottom_navi_bar/presentation/view_model/botton_navi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottonNaviBar extends StatelessWidget {
  BottonNaviBar({super.key});

  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          indicatorColor: AppColors.primaryDark,
          labelPadding: const EdgeInsets.all(5),
          height: 40,
          elevation: 0,
          onDestinationSelected: (value) {
            controller.selectedIndex.value = value;
          },
          selectedIndex: controller.selectedIndex.value,
          destinations: const [
            NavigationDestination(
              icon: Icon(IconBroken.Home),
              label: AppStrings.home,
            ),
            NavigationDestination(
              icon: Icon(IconBroken.Chat),
              label: AppStrings.chat,
            ),
            NavigationDestination(
              icon: Icon(IconBroken.Setting),
              label: AppStrings.settings,
            ),
            NavigationDestination(
              icon: Icon(IconBroken.Profile),
              label: AppStrings.profile,
            ),
          ],
        ),
      ),
      endDrawer: DrawerWidget(),
    );
  }
}
