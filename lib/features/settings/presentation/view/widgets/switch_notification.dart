import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:flutter/cupertino.dart';

class SwitchNotification extends StatelessWidget {
  const SwitchNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return CardDetails(
      title: AppStrings.notifications,
      subTitle: AppStrings.enable,
      trailing: CustomTextButton(
        text: AppStrings.change,
        onPressed: () {},
        textColor: AppColors.primary,
      ),
    );
  }
}
