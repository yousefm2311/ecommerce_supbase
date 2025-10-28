import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/services/validators.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:ecommerce_supbase/core/utils/widgets/icon_broken.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future editProfileDialog() {
  return Get.defaultDialog(
    title: AppStrings.edit,
    content: Column(
      children: [
        CustomTextField(
          label: '',
          validator: (value) => Validators.email(value),
          hint: AppStrings.name,
          prefixIcon: IconBroken.Profile,
          keyboardType: TextInputType.emailAddress,
          fillColor: const Color(0x0ff7f7f7),
        ),
        CustomTextField(
          label: '',
          validator: (value) => Validators.email(value),
          hint: AppStrings.phone,
          prefixIcon: Icons.phone,
          keyboardType: TextInputType.emailAddress,
          fillColor: const Color(0x0ff7f7f7),
        ),
        const SizedBox(height: 20.0),
        CustomMaterialButton(
          color: AppColors.primaryDark,
          width: double.infinity,
          text: AppStrings.save,
          onPressed: () {},
        ),
      ],
    ),
  );
}
