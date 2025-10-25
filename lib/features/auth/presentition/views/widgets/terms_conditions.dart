import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
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
          "من خلال تسجيل الدخول فإنك توافق على شروط الاستخدام الخاصة بنا",
          style: TextStyle(fontSize: 12),
        ),
        CustomTextButton(
          text: 'الشروط والأحكام ',
          onPressed: () {},
          fontSize: 12,
          textColor: Colors.lightBlue,
          fontWeight: FontWeight.w400,
        ),
        const Text(" و ", style: TextStyle(fontSize: 12)),
        CustomTextButton(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          text: 'سياسة الخصوصية',
          onPressed: () {},
          fontSize: 12,
          textColor: Colors.lightBlue,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
