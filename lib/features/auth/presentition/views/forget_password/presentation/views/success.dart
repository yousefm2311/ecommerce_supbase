import 'package:ecommerce_supbase/core/utils/constants/app_assets.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/functions/navigator.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetsData.success),
            const SizedBox(height: 20.0),
            const Text(AppStrings.success, style: AppTextStyles.title),
            const SizedBox(height: 20.0),
            const SizedBox(
              width: 200.0,
              child: Text(AppStrings.successbody, style: AppTextStyles.body),
            ),
            const SizedBox(height: 20.0),
            CustomMaterialButton(
              width: double.infinity,
              text: AppStrings.continue_,
              onPressed: () {
                pushReplacementAllNamedRoute(AppRoutes.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
