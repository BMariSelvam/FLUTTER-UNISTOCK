import 'package:flutter_sample_design/pages/homepage.dart';
import 'package:flutter_sample_design/pages/loginpage.dart';
import 'package:flutter_sample_design/shared/DeviceActivation/DeviceValidationScreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'SearchPrdoucts/ProductDeteilsScreen.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? routes = [
    GetPage(name: HomePage.routeName, page: () => const HomePage()),
    GetPage(name: ProductDeatilsScreen.routeName, page: () => const ProductDeatilsScreen()),
    GetPage(name: LoginPage.routeName, page: () => const LoginPage()),
    GetPage(name: DeviceVAlidationScreen.routeName, page: () => const DeviceVAlidationScreen()),
  ];
}