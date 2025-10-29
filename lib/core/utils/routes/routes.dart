import 'package:ecommerce_supbase/core/middleware/middleware.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_constant.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/forget_password/presentation/views/forgot_password_code.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/forget_password/presentation/views/forgot_password_view.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/forget_password/presentation/views/set_new_password.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/forget_password/presentation/views/success.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/loign_view.dart';
import 'package:ecommerce_supbase/features/auth/presentition/views/register_view.dart';
import 'package:ecommerce_supbase/features/bottom_navi_bar/presentation/view/bottom_navi.dart';
import 'package:ecommerce_supbase/features/home/presentation/view/home_view.dart';
import 'package:ecommerce_supbase/features/live_trip/presentation/view/live_trip_view.dart';
import 'package:ecommerce_supbase/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:ecommerce_supbase/features/profile/presentation/view/profile_view.dart';
import 'package:ecommerce_supbase/features/splash/presentation/view/splash_view.dart';
import 'package:ecommerce_supbase/features/start_trip/presentation/view/start_trip_view.dart';
import 'package:ecommerce_supbase/features/trip_request/presentation/view/trip_request_view.dart';
import 'package:ecommerce_supbase/features/trip_summary/presentation/view/trip_summary_view.dart';
import 'package:get/get_navigation/get_navigation.dart';

abstract class AppRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashView(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: onboarding,
      page: () => const OnBoardingView(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: login,
      page: () => const LoginView(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: register,
      page: () => RegisterView(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: forgetpassword,
      page: () => ForgotPasswordView(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: forgetpasswordcode,
      page: () => const ForgotPasswordCode(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: setnewPassword,
      page: () => const SetNewPassword(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: success,
      page: () => const SuccessView(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: home,
      page: () => const HomeView(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: bottomNaviBar,
      page: () => BottonNaviBar(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: starttrip,
      page: () => const StartTripView(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: profile,
      page: () => const ProfileView(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: tripsummary,
      page: () => const TripSummaryView(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: triprequest,
      page: () => const TripRequestView(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
    GetPage(
      name: livetrip,
      page: () => const LiveTripView(),
      transition: Transition.cupertino,
      transitionDuration: kTransitionDuration,
    ),
  ];

  static const String login = '/login';
  static const String register = '/register';
  static const String onboarding = '/onboarding';
  static const String splash = '/splash';
  static const String forgetpassword = '/forgotpassword';
  static const String forgetpasswordcode = '/forgotpasswordcode';
  static const String setnewPassword = '/setnewPassword';
  static const String success = '/success';
  static const String home = '/home';
  static const String bottomNaviBar = '/bottomNaviBar';
  static const String starttrip = '/starttrip';
  static const String profile = '/profile';
  static const String tripsummary = '/tripsummary';
  static const String triprequest = '/triprequest';
  static const String livetrip = '/livetrip';
}
