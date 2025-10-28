import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:flutter/cupertino.dart';

class StatusPartition extends StatelessWidget {
  const StatusPartition({super.key});
  @override
  Widget build(BuildContext context) {
    return CardDetails(
      title: '${AppStrings.status}: متصل',
      subTitle: AppStrings.locationLive5Seconds,
      trailing: CustomTextButton(
        text: AppStrings.stop,
        onPressed: () {},
        textColor: AppColors.primary,
      ),
    );
  }
}
