import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class OnlineContainer extends StatelessWidget {
  const OnlineContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .2,
      height: 30,
      decoration: BoxDecoration(
        color: AppColors.success,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          AppStrings.online,
          style: AppTextStyles.small.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
