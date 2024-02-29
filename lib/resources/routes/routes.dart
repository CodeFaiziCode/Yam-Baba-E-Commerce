import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/resources/routes/routes_name.dart';
import 'package:yam_baba_e_commerce/view/home_screen.dart';
import 'package:yam_baba_e_commerce/view/login_screen.dart';
import 'package:yam_baba_e_commerce/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => {
        GetPage(
            name: RouteName.splashScreen,
            page: () => SplashScreen(),
            transition: Transition.leftToRight,
            transitionDuration: Duration(milliseconds: 250)),
        GetPage(
            name: RouteName.loginScreen,
            page: () => LoginScreen(),
            transition: Transition.leftToRight,
            transitionDuration: Duration(milliseconds: 250)),
        GetPage(
            name: RouteName.homeScreen,
            page: () => HomeScreen(),
            transition: Transition.leftToRight,
            transitionDuration: Duration(milliseconds: 250)),
      };
}
