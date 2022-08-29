import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../entities/banners.dart';

abstract class BaseHomePageRepository {
  // Future<List<PreviousWork>> getPreviousWork();

  Future<Either<Failure, List<HomeBanners>>> getBanners();

// Future<List<ServicesCategories>> getServicesCategories();
}
