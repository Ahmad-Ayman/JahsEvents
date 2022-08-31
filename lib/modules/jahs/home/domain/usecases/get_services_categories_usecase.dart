import 'package:dartz/dartz.dart';
import 'package:jahsevents/modules/jahs/home/domain/entities/categories/categories.dart';

import '../../../../../core/error/failure.dart';
import '../entities/banners.dart';
import '../repositories/base_home_repository.dart';

class GetServicesCategoriesUseCase {
  final BaseHomePageRepository baseHomePageRepository;

  GetServicesCategoriesUseCase(this.baseHomePageRepository);

  Future<Either<Failure, Categories>> execute() async {
    return await baseHomePageRepository.getCategories();
  }
}
