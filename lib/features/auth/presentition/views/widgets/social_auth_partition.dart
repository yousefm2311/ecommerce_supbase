import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class SocialAuthPartition extends StatelessWidget {
  const SocialAuthPartition({
    super.key,
    required this.text,
    required this.image,
    required this.onTap,
  });

  final String text;
  final String image;

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 35),
                Image.asset(image, height: 40, width: 40),
                const SizedBox(width: 30),
                Center(
                  child: Text(
                    text,
                    style: AppTextStyles.whiteBold.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
