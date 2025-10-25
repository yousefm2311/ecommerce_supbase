import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// بديل push (يدفع صفحة جديدة فوق الـ stack) باستخدام Widget مباشرة
void pushRoute(Widget page, {dynamic arguments}) {
  Get.to(() => page, arguments: arguments);
}

/// بديل push لكن لمسار مُسمّى (Named Route)
void pushNamedRoute(
  String routeName, {
  dynamic arguments,
  Map<String, String>? parameters,
}) {
  Get.toNamed(routeName, arguments: arguments, parameters: parameters);
}

/// بديل pushReplacement (استبدال الصفحة الحالية بصفحة جديدة) باستخدام Widget
void pushReplacementRoute(Widget page, {dynamic arguments}) {
  Get.off(() => page, arguments: arguments);
}

/// بديل pushReplacement لكن لمسار مُسمّى
void pushReplacementNamedRoute(
  String routeName, {
  dynamic arguments,
  Map<String, String>? parameters,
}) {
  Get.offNamed(routeName, arguments: arguments, parameters: parameters);
}

/// بديل pop (الرجوع صفحة للخلف) + إمكانية إعادة نتيجة للصفحة السابقة
void popRoute<T>([T? result]) {
  Get.back<T>(result: result);
}

/// بديل go (الانتقال لمسار وإفراغ الـ stack) باستخدام Widget
/// يشبه GoRouter.go لأنه بيخلّيك على الصفحة الهدف كأنها البداية
void goRouteWithWidget(Widget page, {dynamic arguments}) {
  Get.offAll(() => page, arguments: arguments);
}

/// بديل go (الانتقال لمسار مُسمّى وإفراغ الـ stack)
void goRoute(
  String routeName, {
  dynamic arguments,
  Map<String, String>? parameters,
}) {
  Get.offAllNamed(routeName, arguments: arguments, parameters: parameters);
}

/// بديل goNamed (نفس go لكن بالاسم بشكل واضح)
void goNamedRoute(
  String routeName, {
  dynamic arguments,
  Map<String, String>? parameters,
}) {
  Get.offAllNamed(routeName, arguments: arguments, parameters: parameters);
}
