import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_supbase/features/onboarding/data/models/onboarding_model.dart';

class OnBoardingViewModel extends GetxController {
  final PageController onboardingController = PageController();
  int currentIndex = 0;
  bool isLast = false;

  void changeSmoothIndicator(int value) {
    currentIndex = value;
    isLast = value == onboardingData.length - 1;
    update(["indicator", "buttons"]);
  }
}
