import 'package:dartz/dartz.dart';
import 'package:jahsevents/modules/jahs/home/domain/entities/categories/categories.dart';

import '../../../../../core/error/failure.dart';
import '../entities/banners.dart';

abstract class BaseHomePageRepository {
  // Future<List<PreviousWork>> getPreviousWork();

  Future<Either<Failure, List<HomeBanners>>> getBanners();

  Future<Either<Failure, Categories>> getCategories();
}
