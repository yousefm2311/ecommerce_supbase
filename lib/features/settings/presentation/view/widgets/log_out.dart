import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/icon_broken.dart';
import 'package:flutter/material.dart';

class LogOutPartition extends StatelessWidget {
  const LogOutPartition({super.key});

  @override
  Widget build(BuildContext context) {
    return CardDetails(
      title: 'تسجيل الخروج',
      subTitle: '',
      trailing: IconButton(
        icon: const Icon(IconBroken.Logout),
        onPressed: () {},
      ),
    );
  }
}
