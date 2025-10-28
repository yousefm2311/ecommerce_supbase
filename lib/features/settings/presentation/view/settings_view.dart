import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_text_style.dart';
import 'package:ecommerce_supbase/features/settings/presentation/view/widgets/log_out.dart';
import 'package:ecommerce_supbase/features/settings/presentation/view/widgets/privacy_widget.dart';
import 'package:ecommerce_supbase/features/settings/presentation/view/widgets/switch_lang.dart';
import 'package:ecommerce_supbase/features/settings/presentation/view/widgets/switch_notification.dart';
import 'package:ecommerce_supbase/features/settings/presentation/view/widgets/switch_theme.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.settings, style: AppTextStyles.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            const SwitchLanguage(),
            const SizedBox(height: 20.0),
            const SwitchNotification(),
            const SizedBox(height: 20.0),
            Switch_Theme(),
            const SizedBox(height: 20.0),
            const PrivacyWidget(),
            const SizedBox(height: 20.0),
            const LogOutPartition(),
          ],
        ),
      ),
    );
  }
}
