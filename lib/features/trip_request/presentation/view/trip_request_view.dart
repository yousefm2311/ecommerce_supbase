import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:flutter/material.dart';

class TripRequestView extends StatelessWidget {
  const TripRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.triprequest, style: AppTextStyles.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            CardDetails(
              title: '٣ركاب الي رمسيس',
              subTitle: '١.١ كم . التقاط:شارع السودان',
              trailing: CustomTextButton(
                text: AppStrings.accept,
                textColor: AppColors.primary,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20.0),
            CardDetails(
              title: '٢ركاب الي الدقي',
              subTitle: '١.١ كم . التقاط:ميدان لبنان',
              trailing: CustomTextButton(
                text: AppStrings.accept,
                textColor: AppColors.primary,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20.0),
            CardDetails(
              title: '٣ركاب الي وسط البلد',
              subTitle: '١.١ كم . التقاط:كوبري ١٥ مايو',
              trailing: CustomTextButton(
                text: AppStrings.accept,
                textColor: AppColors.primary,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
