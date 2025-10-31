import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/functions/navigator.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.notifications)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size * .05),
        child: Column(
          children: [
            CardDetails(
              title: 'راكب قريب لخطك',
              subTitle: '٣ طلبات من منطقة فيصل',
              trailing: CustomTextButton(
                text: AppStrings.show,
                textColor: AppColors.primary,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 10.0),
            CardDetails(
              title: 'تذكير بالتقييم',
              subTitle: 'قيم رحلتك الاخيرة',
              trailing: CustomTextButton(
                text: AppStrings.open,
                textColor: AppColors.primary,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 10.0),
            CardDetails(
              title: 'تحديث التطبيق',
              subTitle: 'ميزات جديدة متاحة الأن',
              trailing: CustomTextButton(
                text: AppStrings.update,
                textColor: AppColors.primary,
                onPressed: () {
                  pushNamedRoute(AppRoutes.updateapp);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
