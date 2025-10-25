import 'package:animate_do/animate_do.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/services/validators.dart';
import 'package:ecommerce_supbase/core/utils/widgets/icon_broken.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RegisterTextFormField extends StatefulWidget {
  const RegisterTextFormField({super.key});

  @override
  State<RegisterTextFormField> createState() => _RegisterTextFormFieldState();
}

class _RegisterTextFormFieldState extends State<RegisterTextFormField> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInUp(
          duration: const Duration(milliseconds: 400),
          child: CustomTextField(
            label: '',
            validator: (value) => Validators.name(value),
            hint: AppStrings.name,
            prefixIcon: IconBroken.Profile,
            keyboardType: TextInputType.text,
            fillColor: const Color(0x0ff7f7f7),
          ),
        ),
        FadeInUp(
          duration: const Duration(milliseconds: 500),
          delay: const Duration(milliseconds: 100),
          child: CustomTextField(
            label: '',
            validator: (value) => Validators.email(value),
            hint: AppStrings.email,
            prefixIcon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
            fillColor: const Color(0x0ff7f7f7),
          ),
        ),
        FadeInUp(
          duration: const Duration(milliseconds: 600),
          delay: const Duration(milliseconds: 200),
          child: CustomTextField(
            label: '',
            validator: (value) => Validators.phone(value),
            hint: AppStrings.phone,
            prefixIcon: IconBroken.Call,
            keyboardType: TextInputType.phone,
            fillColor: const Color(0x0ff7f7f7),
          ),
        ),
        FadeInUp(
          duration: const Duration(milliseconds: 700),
          delay: const Duration(milliseconds: 300),
          child: CustomTextField(
            label: '',
            validator: (value) => Validators.strongPassword(value),
            hint: AppStrings.password,
            prefixIcon: IconBroken.Lock,
            keyboardType: TextInputType.visiblePassword,
            fillColor: const Color(0x0ff7f7f7),
            suffixIcon: _isVisible ? Icons.visibility : Icons.visibility_off,
            obscureText: _isVisible,
            onSuffixTap: () {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
          ),
        ),
      ],
    );
  }
}
