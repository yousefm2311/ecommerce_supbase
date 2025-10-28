import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/core/utils/widgets/icon_broken.dart';
import 'package:ecommerce_supbase/core/utils/widgets/text_button.dart';
import 'package:ecommerce_supbase/features/home/presentation/view/widgets/online_container.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(IconBroken.Notification),
          onPressed: () {},
        ),
        title: const Text(AppStrings.home, style: AppTextStyles.title),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () async {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              ' ${AppStrings.goodmorning}, يوسف',
              style: AppTextStyles.body,
            ),
            const SizedBox(height: 10.0),
            const OnlineContainer(),
            const SizedBox(height: 20.0),
            CardDetails(
              title: '${AppStrings.status}: متصل',
              subTitle: AppStrings.locationLive5Seconds,
              trailing: CustomTextButton(
                text: AppStrings.stop,
                onPressed: () {},
                textColor: AppColors.primary,
              ),
            ),
            const SizedBox(height: 20.0),
            CardDetails(
              title: AppStrings.starttrip,
              subTitle: AppStrings.selectpath,
              trailing: CustomTextButton(
                text: AppStrings.start,
                onPressed: () {},
                textColor: AppColors.primary,
              ),
            ),
            const SizedBox(height: 20.0),
            CardDetails(
              title: AppStrings.nearbyrequest,
              subTitle: 'راكبان علي بعد ١,٢ كم',
              trailing: CustomTextButton(
                text: AppStrings.show,
                onPressed: () {},
                textColor: AppColors.primary,
              ),
            ),
            const SizedBox(height: 20.0),
            CardDetails(
              title: AppStrings.summaryday,
              subTitle: '٨ركاب . ٤٢ دقيقة',
              trailing: CustomTextButton(
                text: AppStrings.open,
                onPressed: () {},
                textColor: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
