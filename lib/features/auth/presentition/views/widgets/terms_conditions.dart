import 'package:ecommerce_supbase/core/widgets/text_button.dart';
import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        const Text(
          "By signing in you agree to our ",
          style: TextStyle(fontSize: 12),
        ),
        CustomTextButton(
          text: 'Terms & Conditions',
          onPressed: () {},
          fontSize: 12,
          textColor: Colors.lightBlue,
          fontWeight: FontWeight.w400,
        ),
        const Text(" and ", style: TextStyle(fontSize: 12)),
        CustomTextButton(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          text: 'Privacy Policy',
          onPressed: () {},
          fontSize: 12,
          textColor: Colors.lightBlue,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
