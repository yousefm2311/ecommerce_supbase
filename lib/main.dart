import 'package:ecommerce_supbase/core/utils/binding.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/services/settings/settings_services.dart';
import 'package:ecommerce_supbase/core/utils/services/themes/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initService();
  runApp(const MyApp());
}
Future initService() async {
  await Get.putAsync(() => SettingsServices().init());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.splash,
      initialBinding: Binding(),
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      locale: const Locale('ar', 'EG'),
      supportedLocales: const [Locale('ar', 'EG'), Locale('en', 'US')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
