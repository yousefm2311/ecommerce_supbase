import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/core/utils/functions/navigator.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/services/%C2%A0helpers/app_mediaquery.dart';
import 'package:ecommerce_supbase/core/utils/widgets/icon_broken.dart';
import 'package:ecommerce_supbase/features/home/presentation/view/widgets/nearby_rquest_partition.dart';
import 'package:ecommerce_supbase/features/home/presentation/view/widgets/online_container.dart';
import 'package:ecommerce_supbase/features/home/presentation/view/widgets/start_trip_partition.dart';
import 'package:ecommerce_supbase/features/home/presentation/view/widgets/status_partition.dart';
import 'package:ecommerce_supbase/features/home/presentation/view/widgets/summary_day.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(IconBroken.Notification),
          onPressed: () {
            pushNamedRoute(AppRoutes.notifications);
          },
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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(' ${AppStrings.goodmorning}, يوسف', style: AppTextStyles.body),
            SizedBox(height: 10.0),
            OnlineContainer(),
            SizedBox(height: 20.0),
            StatusPartition(),
            SizedBox(height: 20.0),
            StartTripPartition(),
            SizedBox(height: 20.0),
            NearbyRquestPartition(),
            SizedBox(height: 20.0),
            SummaryDay(),
          ],
        ),
      ),
    );
  }
}
