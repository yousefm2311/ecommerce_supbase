// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPageViewItems extends StatelessWidget {
  const OnBoardingPageViewItems({
    super.key,
    required this.index,
    required this.model,
  });

  final int index;
  final model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          model.image,
          height: MediaQuery.sizeOf(context).height * .4,
          repeat: false, // 🔹 عشان تقلل استهلاك الموارد
          frameRate: const FrameRate(60),
        ),
        const SizedBox(height: 20.0),
        Text(
          model.title,
          textAlign: TextAlign.center,
          style: AppTextStyles.title,
        ),
        const SizedBox(height: 20.0),
        Text(
          model.description,
          style: AppTextStyles.body,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
