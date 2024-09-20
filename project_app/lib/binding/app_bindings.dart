import 'package:get/get.dart';
import 'package:project_app/project_page/project_main_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainProjectController> (
      ()=> MainProjectController(),
    );
  }
}