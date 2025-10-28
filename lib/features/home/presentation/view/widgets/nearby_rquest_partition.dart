import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/functions/navigator.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:flutter/cupertino.dart';

class NearbyRquestPartition extends StatelessWidget {
  const NearbyRquestPartition({super.key});

  @override
  Widget build(BuildContext context) {
    return CardDetails(
      title: AppStrings.nearbyrequest,
      subTitle: 'راكبان علي بعد ١,٢ كم',
      trailing: CustomTextButton(
        text: AppStrings.show,
        onPressed: () {
          pushNamedRoute(AppRoutes.triprequest);
        },
        textColor: AppColors.primary,
      ),
    );
  }
}
