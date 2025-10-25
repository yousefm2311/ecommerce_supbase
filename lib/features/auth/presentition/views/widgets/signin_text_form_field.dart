import 'package:animate_do/animate_do.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/services/validators.dart';
import 'package:ecommerce_supbase/core/utils/widgets/icon_broken.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignInTextFormField extends StatefulWidget {
  const SignInTextFormField({super.key});

  @override
  State<SignInTextFormField> createState() => _SignInTextFormFieldState();
}

class _SignInTextFormFieldState extends State<SignInTextFormField> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInUp(
          duration: const Duration(milliseconds: 500),
          child: CustomTextField(
            label: '',
            validator: (value) => Validators.email(value),
            hint: AppStrings.email,
            prefixIcon: IconBroken.Profile,
            keyboardType: TextInputType.emailAddress,
            fillColor: const Color(0xFFF7F7F7),
          ),
        ),

        FadeInUp(
          duration: const Duration(milliseconds: 600),
          delay: const Duration(milliseconds: 150),
          child: CustomTextField(
            label: '',
            validator: (value) => Validators.password(value),
            hint: AppStrings.password,
            prefixIcon: IconBroken.Lock,
            keyboardType: TextInputType.visiblePassword,
            fillColor: const Color(0xFFF7F7F7),
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
