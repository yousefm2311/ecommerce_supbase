import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:flutter/material.dart';

class ContainerSummary extends StatelessWidget {
  const ContainerSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * .16,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'الدخل (التقديري)',
                  style: AppTextStyles.title.copyWith(fontSize: 16),
                ),
                Text(
                  '١٢٠ جنيه',
                  style: AppTextStyles.title.copyWith(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'التقييم',
                  style: AppTextStyles.title.copyWith(fontSize: 16),
                ),
                Text('٤,٦ ', style: AppTextStyles.title.copyWith(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
