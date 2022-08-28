import 'package:dartz/dartz.dart';





abstract class BaseHomePageRepository {
  // Future<List<PreviousWork>> getPreviousWork();

  Future<Either<Failure, List<HomeBanners>>> getBanners();

// Future<List<ServicesCategories>> getServicesCategories();
}
