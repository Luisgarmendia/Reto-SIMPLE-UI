import 'package:get/get.dart';
import 'package:taller_1/app/ui/pages/home/home_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      transition: Transition.native,
    ),
  ];
}
