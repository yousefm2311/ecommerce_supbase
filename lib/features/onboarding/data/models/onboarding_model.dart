// import 'package:quran_app_android/core/util/assets.dart';

import 'package:ecommerce_supbase/core/utils/constants/app_assets.dart';

class OnBoardingModel {
  String? image, title, description;

  OnBoardingModel({this.image, this.title, this.description});
}

List<OnBoardingModel> onboardingData = [
  OnBoardingModel(
    title: "تتبع المواصلات بسهولة",
    description:
        "اعرف مكان الميكروباص لحظة بلحظة على الخريطة.",
    image: AssetsData.json_1,
  ),
  OnBoardingModel(
    title: "تواصل مباشر مع السائق",
    description:
        "تقدر تتصل أو تدردش مع السائق بسهولة.",
    image: AssetsData.json_2,
  ),
  OnBoardingModel(
    title: "رحلات آمنة ومنظمة",
    description:
        "كل رحلاتك موثقة وسهلة المتابعة من البداية للنهاية.",
    image: AssetsData.json_3,
  ),

];
