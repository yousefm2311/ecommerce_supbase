import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';

import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.blue,
              child: const Center(
                child: Text(
                  AppStrings.appName,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
            ),
            Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.blue,
              child: const Center(
                child: Text(
                  AppStrings.appSplash,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
