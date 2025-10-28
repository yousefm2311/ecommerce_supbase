import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:flutter/cupertino.dart';

class PrivacyWidget extends StatelessWidget {
  const PrivacyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CardDetails(
      title: AppStrings.privacy,
      subTitle: AppStrings.policiesanddata,
      trailing: CustomTextButton(
        text: AppStrings.open,
        onPressed: () {},
        textColor: AppColors.primary,
      ),
    );
  }
}
