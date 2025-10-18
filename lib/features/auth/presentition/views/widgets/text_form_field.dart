import 'package:ecommerce_supbase/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignInTextFormField extends StatefulWidget {
  const SignInTextFormField({super.key});

  @override
  State<SignInTextFormField> createState() => _SignInTextFormFieldState();
}

class _SignInTextFormFieldState extends State<SignInTextFormField> {
  bool _isVissable = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          label: '',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }
            if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
              return 'Please enter a valid email address';
            }
            return null;
          },
          hint: 'Email Address',
          prefixIcon: Icons.email,
          keyboardType: TextInputType.emailAddress,
          fillColor: const Color(0x0ff7f7f7),
        ),
        CustomTextField(
          label: '',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            if (value.length < 6) {
              return 'Password must be at least 6 characters long';
            }
            return null;
          },
          hint: 'Password',
          prefixIcon: Icons.lock,
          keyboardType: TextInputType.emailAddress,
          fillColor: const Color(0x0ff7f7f7),
          suffixIcon: _isVissable ? Icons.visibility : Icons.visibility_off,
          obscureText: _isVissable,
          onSuffixTap: () {
            setState(() {
              _isVissable = !_isVissable;
            });
          },
        ),
      ],
    );
  }
}
