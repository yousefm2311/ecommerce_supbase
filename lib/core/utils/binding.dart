
import 'package:ecommerce_supbase/features/onboarding/presentation/view_model/onboarding_view_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingViewModel());
  }
}
