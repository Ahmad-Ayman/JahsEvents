import 'package:get/get.dart';
import 'package:jahsevents/modules/app_layout/controllers/app_contoller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppController());
  }
}
