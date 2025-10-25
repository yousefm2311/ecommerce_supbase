import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/functions/navigator.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/services/validators.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:ecommerce_supbase/core/utils/widgets/icon_broken.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class SetNewPassword extends StatefulWidget {
   const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  final formKey=GlobalKey<FormState>();

  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
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
                AppStrings.setnewPassword,
                style: AppTextStyles.title,
              ),
              const Text(
                AppStrings.setnewPasswordbody,
                style: AppTextStyles.body,
              ),
              CustomTextField(
                label: '',
                validator: (value) => Validators.strongPassword(value),
                hint: AppStrings.password,
                prefixIcon: IconBroken.Lock,
                keyboardType: TextInputType.visiblePassword,
                fillColor: const Color(0x0ff7f7f7),
                suffixIcon: _isVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                obscureText: _isVisible,
                onSuffixTap: () {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
                },
              ),
              CustomTextField(
                label: '',
                validator: (value) => Validators.strongPassword(value),
                hint: AppStrings.passwordConfirm,
                prefixIcon: IconBroken.Lock,
                keyboardType: TextInputType.visiblePassword,
                fillColor: const Color(0x0ff7f7f7),
                suffixIcon: _isVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                obscureText: _isVisible,
                onSuffixTap: () {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
                },
              ),
              const SizedBox(height: 20.0),
              const SizedBox(height: 20.0),
            CustomMaterialButton(
                width: double.infinity,
                text: AppStrings.updatePassword,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                  }
                  pushNamedRoute(AppRoutes.success);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
