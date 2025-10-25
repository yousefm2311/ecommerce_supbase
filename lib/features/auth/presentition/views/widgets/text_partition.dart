import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class TextPartition extends StatelessWidget {
  const TextPartition({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.headline.copyWith(color: Colors.blue.shade900),
        ),
        const SizedBox(height: 10.0),
        Row(children: [Text(subtitle, style: AppTextStyles.body)]),
      ],
    );
  }
}
