import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:ecommerce_supbase/features/profile/presentation/view/widgets/edit_profile_dialog.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.profile, style: AppTextStyles.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            const CircleAvatar(radius: 60.0),
            const SizedBox(height: 30.0),
            CardDetails(
              title: 'يوسف محمد',
              subTitle: 'سائق منذ ٢٠٢٣',
              trailing: CustomTextButton(
                textColor: AppColors.primary,
                text: AppStrings.edit,
                onPressed: () {
                  editProfileDialog();
                },
              ),
            ),
            const SizedBox(height: 20.0),
            CardDetails(
              title: AppStrings.vehicel,
              subTitle: AppStrings.vehicelname,
              trailing: CustomTextButton(
                textColor: AppColors.primary,
                text: AppStrings.edit,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20.0),
            CardDetails(
              title: AppStrings.favoritepath,
              subTitle: '${AppStrings.pathfrom} - ${AppStrings.pathin}',
              trailing: CustomTextButton(
                textColor: AppColors.primary,
                text: AppStrings.edit,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20.0),
            CustomMaterialButton(
              width: double.infinity,
              height: 65,
              color: AppColors.primaryDark,
              borderRadius: 20.0,
              text: AppStrings.logout,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
