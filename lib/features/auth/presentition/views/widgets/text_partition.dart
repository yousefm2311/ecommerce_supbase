import 'package:ecommerce_supbase/core/utils/text_style.dart';
import 'package:ecommerce_supbase/core/widgets/text_button.dart';
import 'package:flutter/material.dart';

class TextPartition extends StatelessWidget {
  const TextPartition({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30.0),
        const Text("Sign in", style: AppTextStyles.headline),
        Row(
          children: [
            const Text("New user?", style: AppTextStyles.body),
            CustomTextButton(text: 'Create an account', onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
