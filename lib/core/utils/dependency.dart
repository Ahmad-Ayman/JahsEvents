import 'package:get/get.dart';
import 'package:jahsevents/modules/jahs/home/data/datasource/remote_data_source/home_remote_data_source.dart';
import 'package:jahsevents/modules/jahs/home/data/repoistory/home_repository.dart';

class DependancyCreator {
  static init() {
    //  Get.lazyPut(() => HomeRepository(Get.find<BaseHomeRemoteDataSource>()));
  }
}
