import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:jahsevents/modules/jahs/home/domain/entities/categories/categories.dart';
import 'package:jahsevents/modules/jahs/home/domain/usecases/get_services_categories_usecase.dart';

import '../../data/datasource/remote_data_source/home_remote_data_source.dart';
import '../../data/repoistory/home_repository.dart';
import '../../domain/entities/banners.dart';
import '../../domain/repositories/base_home_repository.dart';
import '../../domain/usecases/get_home_banners_usecase.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getBannersData();
    getCategoriesData();
    debugPrint('size = ${banners.length}');
  }

  var banners = RxList<HomeBanners>([]);

  void getBannersData() async {
    EasyLoading.show(
      status: 'loading...',
      indicator: SpinKitPouringHourGlass(color: Colors.redAccent),
    );
    BaseHomeRemoteDataSource baseHomeRemoteDataSource = HomeRemoteDataSource();
    BaseHomePageRepository baseHomePageRepository =
        HomeRepository(baseHomeRemoteDataSource);
    await GetHomeBannersUseCase(baseHomePageRepository).execute().then((value) {
      value.fold((l) => null, (bann) {
        banners.assignAll(bann);
      });
      debugPrint(banners.toString());
      EasyLoading.showSuccess('Success');
      EasyLoading.dismiss();
    });
  }

  var categs = Rx<Categories?>(null);

  void getCategoriesData() async {
    EasyLoading.show(
      status: 'loading...',
      indicator: const SpinKitPouringHourGlass(color: Colors.redAccent),
    );
    BaseHomeRemoteDataSource baseHomeRemoteDataSource = HomeRemoteDataSource();
    BaseHomePageRepository baseHomePageRepository =
        HomeRepository(baseHomeRemoteDataSource);
    await GetServicesCategoriesUseCase(baseHomePageRepository)
        .execute()
        .then((value) {
      debugPrint("Here");
      value.fold((l) => null, (categories) {
        categs.value = categories;
      });
      debugPrint(categs.toString());
      EasyLoading.showSuccess('Success');
      EasyLoading.dismiss();
    });
  }
}
