import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:flutter/cupertino.dart';

class SummaryDay extends StatelessWidget {
  const SummaryDay({super.key});

  @override
  Widget build(BuildContext context) {
    return CardDetails(
      title: AppStrings.summaryday,
      subTitle: '٨ركاب . ٤٢ دقيقة',
      trailing: CustomTextButton(
        text: AppStrings.open,
        onPressed: () {},
        textColor: AppColors.primary,
      ),
    );
  }
}
