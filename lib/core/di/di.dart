import 'package:get/get.dart';
import 'package:jahsevents/modules/jahs/home/presentation/controller/home_contoller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
