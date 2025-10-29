import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/functions/navigator.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:ecommerce_supbase/features/trip_summary/presentation/view/widgets/container_summary.dart';
import 'package:flutter/material.dart';

class TripSummaryView extends StatelessWidget {
  const TripSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.tripsummary, style: AppTextStyles.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            const CardDetails(
              title: '${AppStrings.pathfrom}-${AppStrings.pathin}',
              subTitle: '٤٢ دقيقة . ١٢راكبا',
              trailing: Text(''),
            ),
            const SizedBox(height: 20.0),
            const ContainerSummary(),
            const SizedBox(height: 20.0),
            CustomMaterialButton(
              width: double.infinity,
              color: AppColors.warning,
              text: AppStrings.starttrip,
              onPressed: () {
                pushNamedRoute(AppRoutes.starttrip);
              },
            ),
            const SizedBox(height: 20.0),
            CustomMaterialButton(
              width: double.infinity,
              color: AppColors.primaryDark,
              text: AppStrings.home,
              onPressed: () {
                pushReplacementAllNamedRoute(AppRoutes.bottomNaviBar);
              },
            ),
          ],
        ),
      ),
    );
  }
}
