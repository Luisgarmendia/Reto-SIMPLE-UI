import 'package:get/get.dart';
import 'package:taller_1/app/routes/app_pages.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    print('Estoy Iniciando');
    super.onInit();
  }

  @override
  void onReady() {
    print('Estoy Listo');
    super.onReady();
  }

  @override
  void onClose() {
    print('Estoy Cerrando Todo');
    super.onClose();
  }

  irAContador() {
    // Get.to(ContadorPage());

    Get.toNamed(Routes.CONTADOR);
  }
}
