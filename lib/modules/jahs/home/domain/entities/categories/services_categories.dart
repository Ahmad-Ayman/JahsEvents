import 'package:equatable/equatable.dart';
import 'package:jahsevents/modules/jahs/home/domain/entities/categories/services_offered.dart';

class ServicesCategories extends Equatable {
  final int categoryId;
  final String categoryName;
  final String categoryDesc;
  final String categoryImage;
  final List<ServicesOffered> services;

  const ServicesCategories({
    required this.categoryId,
    required this.categoryName,
    required this.categoryDesc,
    required this.categoryImage,
    required this.services,
  });

  @override
  List<Object> get props => [
        categoryId,
        categoryName,
        categoryDesc,
        categoryImage,
        services,
      ];
}
