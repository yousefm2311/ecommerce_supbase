import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:ecommerce_supbase/core/utils/services/validators.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class StartTripView extends StatelessWidget {
  const StartTripView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.starttrip, style: AppTextStyles.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            CustomTextField(
              label: '',
              validator: (value) => Validators.name(value),
              hint: AppStrings.pathfrom,
              prefixIcon: Icons.route,
              keyboardType: TextInputType.emailAddress,
              fillColor: const Color(0x0ff7f7f7),
            ),
            CustomTextField(
              label: '',
              validator: (value) => Validators.name(value),
              hint: AppStrings.pathin,
              prefixIcon: Icons.route,
              keyboardType: TextInputType.emailAddress,
              fillColor: const Color(0x0ff7f7f7),
            ),
            CustomTextField(
              label: '',
              validator: (value) => Validators.name(value),
              hint: AppStrings.capacityvehicle,
              prefixIcon: Icons.reduce_capacity,
              keyboardType: TextInputType.emailAddress,
              fillColor: const Color(0x0ff7f7f7),
            ),
            const SizedBox(height: 25.0),
            CustomMaterialButton(
              width: double.infinity,
              color: AppColors.primaryDark,
              text: AppStrings.starttrip,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
