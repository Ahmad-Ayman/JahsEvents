import 'package:dio/dio.dart';
import 'package:jahsevents/jahs/home/data/model/banners_model.dart';

import '../../../../../core/network/api_constant.dart';

abstract class BaseHomeRemoteDataSource {
  Future<List<HomeBannersModel>> getBanners();
}

class HomeRemoteDataSource extends BaseHomeRemoteDataSource {
  @override
  Future<List<HomeBannersModel>> getBanners() async {
    final response = await Dio().get(ApiConstants.homeBannersPath);
    if (response.statusCode == 200) {
      return List<HomeBannersModel>.from((response.data['body'] as List).map(
        (e) => HomeBannersModel.fromJson(e),
      ));
    } else {
      return [];
    }
  }
}
