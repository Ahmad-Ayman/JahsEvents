import 'package:get/get.dart';
import 'package:jahsevents/modules/jahs/home/data/repoistory/home_repository.dart';
import 'package:jahsevents/modules/jahs/home/domain/usecases/get_home_banners_usecase.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    // Get.lazyPut(() => GetHomeBannersUseCase());
  }
}
