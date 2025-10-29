import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
    required this.title,
    required this.subTitle,
    required this.trailing,
    this.color,
    this.textStyle,
  });

  final String title;
  final String subTitle;
  final Widget? trailing;
  final Color? color;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: color ?? Theme.of(context).colorScheme.surface,
      ),
      child: ListTile(
        trailing: trailing,
        title: Text(title, style: textStyle ?? AppTextStyles.title),
        subtitle: Text(subTitle, style: AppTextStyles.small),
      ),
    );
  }
}
