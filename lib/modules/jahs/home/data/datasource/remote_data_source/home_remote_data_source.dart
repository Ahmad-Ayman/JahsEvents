import 'package:dio/dio.dart';
import 'package:jahsevents/core/error/exceptions.dart';
import 'package:jahsevents/core/network/error_msg_model.dart';
import 'package:jahsevents/modules/jahs/home/data/model/categories/categories_model.dart';

import '../../../../../../core/network/api_constant.dart';
import '../../model/banners_model.dart';

abstract class BaseHomeRemoteDataSource {
  Future<List<HomeBannersModel>> getBanners();
  Future<CategoriesModel> getCategories();
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
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<CategoriesModel> getCategories() async {
    final response = await Dio().get(ApiConstants.categoriesPath);
    if (response.statusCode == 200) {
      return CategoriesModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
