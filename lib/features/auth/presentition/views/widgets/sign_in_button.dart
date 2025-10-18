import 'package:ecommerce_supbase/core/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.onPressed});

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return CustomMaterialButton(
      text: 'Sign In',
      onPressed: onPressed,
      color: Colors.black,
      width: double.infinity,
    );
  }
}
