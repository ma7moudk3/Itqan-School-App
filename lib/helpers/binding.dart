import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:itqan_school/core/controllerViewModel.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerViewModel());
  }
}
