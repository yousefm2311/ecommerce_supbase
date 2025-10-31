import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';

class UpdateAppView extends StatelessWidget {
  const UpdateAppView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.updatevailable)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size * .05),
        child: Column(
          children: [
            CardDetails(
              height: 100,
              textStyle: AppTextStyles.body.copyWith(
                fontWeight: FontWeight.w600,
              ),
              contentPadding: 10,
              title: AppStrings.updateDetails,
              subTitle: AppStrings.updatesize,
              trailing: const Text(''),
            ),
            const SizedBox(height: 20.0),
            CustomMaterialButton(
              width: double.infinity,
              color: AppColors.primaryDark,
              text: AppStrings.updatenow,
              onPressed: () {},
            ),
            const SizedBox(height: 20.0),
            CustomMaterialButton(
              width: double.infinity,
              color: AppColors.error,
              text: AppStrings.skip,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
