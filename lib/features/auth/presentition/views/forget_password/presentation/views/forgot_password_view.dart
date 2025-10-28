import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/functions/navigator.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:ecommerce_supbase/core/utils/services/validators.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({super.key});

  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppStrings.forgotPaswwordText,
                style: AppTextStyles.title,
              ),
              const Text(
                AppStrings.forgotPaswwordbody,
                style: AppTextStyles.body,
              ),
              CustomTextField(
                label: '',
                validator: (value) => Validators.email(value),
                hint: AppStrings.email,
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                fillColor: const Color(0x0ff7f7f7),
              ),
              const SizedBox(height: 20.0),
            CustomMaterialButton(
                width: double.infinity,
                text: AppStrings.forgotPaswwordText,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    pushNamedRoute(AppRoutes.forgetpasswordcode);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
