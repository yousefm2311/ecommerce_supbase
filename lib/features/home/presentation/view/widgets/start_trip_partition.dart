import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/functions/navigator.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:flutter/cupertino.dart';

class StartTripPartition extends StatelessWidget {
  const StartTripPartition({super.key});

  @override
  Widget build(BuildContext context) {
    return CardDetails(
      title: AppStrings.starttrip,
      subTitle: AppStrings.selectpath,
      trailing: CustomTextButton(
        text: AppStrings.start,
        onPressed: () {
          pushNamedRoute(AppRoutes.starttrip);
        },
        textColor: AppColors.primary,
      ),
    );
  }
}
