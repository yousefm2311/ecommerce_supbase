import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:ecommerce_supbase/features/inrider_passengers/data/seeder_model.dart';
import 'package:flutter/material.dart';

class ListViewCardDetails extends StatelessWidget {
  const ListViewCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataSeeder.length,
      itemBuilder: (context, item) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: CardDetails(
            title: dataSeeder[item].title,
            subTitle: dataSeeder[item].subtitle,
            trailing: CustomTextButton(
              textColor: AppColors.primary,
              text: dataSeeder[item].trailer,
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
