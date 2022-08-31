import 'package:equatable/equatable.dart';
import 'package:jahsevents/modules/jahs/home/domain/entities/categories/services_categories.dart';

class Categories extends Equatable {
  final List<ServicesCategories> categoriesData;
  final String status;
  final String message;

  const Categories(
      {required this.categoriesData,
      required this.status,
      required this.message});

  @override
  List<Object> get props => [
        categoriesData,
        status,
        message,
      ];
}
