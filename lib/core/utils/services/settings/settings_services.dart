import 'package:ecommerce_supbase/core/utils/services/database/share_Prefs.dart';
import 'package:get/get.dart';

class SettingsServices extends GetxService {

  final prefs = AppPrefs();
  Future<SettingsServices> init() async {
    await prefs.init();
    // Dio_Helper.init();
    return this;
  }
}
