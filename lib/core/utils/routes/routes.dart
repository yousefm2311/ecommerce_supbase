import 'package:ecommerce_supbase/features/auth/presentition/views/loign_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static final routes = GoRouter(
    routes: [
      GoRoute(path: login, builder: (context, state) => const LoginView()),
    ],
  );
  static const String login = '/';
  static const String register = '/register';
  static const String home = '/home';
  static const String productDetails = '/productDetails';
  static const String cart = '/cart';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String orders = '/orders';
  static const String checkout = '/checkout';
  static const String search = '/search';
  static const String favorites = '/favorites';
  static const String splash = '/splash';
}
