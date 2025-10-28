import 'package:ecommerce_supbase/core/utils/services/database/share_Prefs.dart';
import 'package:ecommerce_supbase/features/settings/presentation/view_model/theme_controller.dart';
import 'package:get/get.dart';

class SettingsServices extends GetxService {
  final prefs = AppPrefs();
  final themeController = Get.put(ThemeController());
  Future<SettingsServices> init() async {
    await prefs.init();
    await themeController.loadTheme();
    // Dio_Helper.init();
    return this;
  }
}
