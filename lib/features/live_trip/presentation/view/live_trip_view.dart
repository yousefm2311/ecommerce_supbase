import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/functions/navigator.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:flutter/material.dart';

class LiveTripView extends StatelessWidget {
  const LiveTripView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.livetrip, style: AppTextStyles.title),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('الخريطة')],
        ),
      ),
      bottomSheet: SizedBox(
        height: 300.0,
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.05),
          child: Column(
            children: [
              CardDetails(
                color: Theme.of(context).colorScheme.onPrimary,
                textStyle: AppTextStyles.body.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                title: '${AppStrings.pathfrom}-${AppStrings.pathin}',
                subTitle: 'المقاعد ٨/١٤',
                trailing: CustomTextButton(
                  textColor: AppColors.primary,
                  text: 'في الطريق',
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    child: CustomMaterialButton(
                      color: AppColors.primaryDark,
                      text: '+ مقعد',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: CustomMaterialButton(
                      color: AppColors.primaryDark,
                      text: '- مقعد',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              CustomMaterialButton(
                width: double.infinity,
                color: AppColors.error,
                text: AppStrings.cancel,
                onPressed: () {
                  pushReplacementAllNamedRoute(AppRoutes.tripsummary);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
