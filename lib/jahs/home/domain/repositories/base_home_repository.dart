import 'package:jahsevents/jahs/home/domain/entities/banners.dart';

abstract class BaseHomePageRepository {
  // Future<List<PreviousWork>> getPreviousWork();

  Future<List<HomeBanners>> getBanners();

  // Future<List<ServicesCategories>> getServicesCategories();
}
