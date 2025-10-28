
import 'package:ecommerce_supbase/features/onboarding/presentation/view_model/onboarding_view_model.dart';
import 'package:ecommerce_supbase/features/settings/presentation/view_model/theme_controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingViewModel());
    Get.lazyPut(() => ThemeController());
  }
}
