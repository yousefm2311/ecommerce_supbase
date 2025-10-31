import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_file_picker_field.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';

class UploadDocumentsView extends StatelessWidget {
  const UploadDocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.uploaddocuments)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size * .05),
        child: Column(
          children: [
            CustomFilePickerField(
              label: AppStrings.idfront,
              fillColor: const Color(0x0ff7f7f7),
              onFileSelected: (value) {},
            ),
            const SizedBox(height: 20.0),
            CustomFilePickerField(
              label: AppStrings.idback,
              fillColor: const Color(0x0ff7f7f7),
              onFileSelected: (value) {},
            ),

            const SizedBox(height: 20.0),
            CustomFilePickerField(
              label: AppStrings.license,
              fillColor: const Color(0x0ff7f7f7),
              onFileSelected: (value) {},
            ),
            const SizedBox(height: 20.0),
            CustomFilePickerField(
              label: AppStrings.carphoto,
              fillColor: const Color(0x0ff7f7f7),
              onFileSelected: (value) {},
            ),
            const SizedBox(height: 20.0),
            CustomFilePickerField(
              label: AppStrings.profilephoto,
              fillColor: const Color(0x0ff7f7f7),
              onFileSelected: (value) {},
            ),
            const SizedBox(height: 20.0),
            CustomMaterialButton(
              width: double.infinity,
              color: AppColors.primaryDark,
              text: AppStrings.next,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
