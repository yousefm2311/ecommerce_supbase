import 'package:ecommerce_supbase/features/onboarding/data/models/onboarding_model.dart';
import 'package:ecommerce_supbase/features/onboarding/presentation/view_model/onboarding_view_model.dart';
import 'package:ecommerce_supbase/features/onboarding/presentation/view/widgets/onboarding_page_view_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPageView extends GetView<OnBoardingViewModel> {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: controller.onboardingController,
        onPageChanged: (value) {
          controller.changeSmoothIndicator(value);
        },
        allowImplicitScrolling: true, // 🔹 لتسريع التنقل
        itemBuilder: (context, index) =>
            OnBoardingPageViewItems(index: index, model: onboardingData[index]),
        itemCount: onboardingData.length,
      ),
    );
  }
}
