import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/widgets/icon_broken.dart';
import 'package:ecommerce_supbase/features/bottom_navi_bar/presentation/view_model/botton_navi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({super.key});

  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            // رأس القايمة
            const UserAccountsDrawerHeader(
              otherAccountsPicturesSize: Size.square(20),
              otherAccountsPictures: [
                CircleAvatar(backgroundColor: AppColors.success),
              ],
              decoration: BoxDecoration(color: AppColors.primaryDark),
              accountName: Text(
                'يوسف',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text('yousef@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/success.png'),
              ),
            ),

            // عناصر القائمة
            ListTile(
              leading: const Icon(Icons.trip_origin),
              title: const Text(
                AppStrings.trips,
                style: TextStyle(fontFamily: 'Cairo'),
              ),
              onTap: () {
                controller.selectedIndex.value = 0;
                Get.back(); // يقفل القائمة
              },
            ),
            ListTile(
              leading: const Icon(IconBroken.Wallet),
              title: const Text(
                AppStrings.wallet,
                style: TextStyle(fontFamily: 'Cairo'),
              ),
              onTap: () {
                controller.selectedIndex.value = 1;
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(IconBroken.Time_Circle),
              title: const Text(
                AppStrings.reminder,
                style: TextStyle(fontFamily: 'Cairo'),
              ),
              onTap: () {
                controller.selectedIndex.value = 2;
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.home_repair_service_outlined),
              title: const Text(
                AppStrings.oilAndMa,
                style: TextStyle(fontFamily: 'Cairo'),
              ),
              onTap: () {
                controller.selectedIndex.value = 3;
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(IconBroken.More_Circle),
              title: const Text(
                AppStrings.aboutApp,
                style: TextStyle(fontFamily: 'Cairo'),
              ),
              onTap: () {
                controller.selectedIndex.value = 3;
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(IconBroken.Logout),
              title: const Text(
                AppStrings.logout,
                style: TextStyle(fontFamily: 'Cairo'),
              ),
              onTap: () {
                controller.selectedIndex.value = 3;
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
