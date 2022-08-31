import 'package:jahsevents/modules/jahs/home/data/model/categories/services_offered_model.dart';
import 'package:jahsevents/modules/jahs/home/domain/entities/categories/services_categories.dart';

class ServiceCategoriesModel extends ServicesCategories {
  const ServiceCategoriesModel(
      {required int categoryId,
      required String categoryName,
      required String categoryDesc,
      required String categoryImage,
      required List<ServicesOfferedModel> services})
      : super(
          categoryId: categoryId,
          categoryName: categoryName,
          categoryDesc: categoryDesc,
          categoryImage: categoryImage,
          services: services,
        );

  factory ServiceCategoriesModel.fromJson(Map<String, dynamic> json) =>
      ServiceCategoriesModel(
        categoryId: json['categoryID'],
        categoryName: json['categoryName'],
        categoryDesc: json['categoryDesc'],
        categoryImage: json['categoryImage'],
        services: List.from(json['categoryServices'])
            .map((e) => ServicesOfferedModel.fromJson(e))
            .toList(),
      );
}
