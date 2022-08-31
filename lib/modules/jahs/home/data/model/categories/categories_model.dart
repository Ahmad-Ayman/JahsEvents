import 'package:jahsevents/modules/jahs/home/data/model/categories/services_categories_model.dart';
import 'package:jahsevents/modules/jahs/home/domain/entities/categories/categories.dart';

class CategoriesModel extends Categories {
  const CategoriesModel({
    required List<ServiceCategoriesModel> categoriesData,
    required String status,
    required String message,
  }) : super(
          categoriesData: categoriesData,
          status: status,
          message: message,
        );
  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      CategoriesModel(
        categoriesData: List.from(json['categoriesData'])
            .map((e) => ServiceCategoriesModel.fromJson(e))
            .toList(),
        status: json['status'],
        message: json['message'],
      );
}
