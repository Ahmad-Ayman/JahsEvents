import 'package:jahsevents/jahs/home/data/datasource/remote_data_source/home_remote_data_source.dart';
import 'package:jahsevents/jahs/home/domain/entities/banners.dart';
import 'package:jahsevents/jahs/home/domain/repositories/base_home_repository.dart';

class HomeRepository extends BaseHomePageRepository {
  final BaseHomeRemoteDataSource baseHomeRemoteDataSource;
  HomeRepository(this.baseHomeRemoteDataSource);

  @override
  Future<List<HomeBanners>> getBanners() async {
    final res = await baseHomeRemoteDataSource.getBanners();
    try {
      return res;
    } catch (failure) {
      return [];
    }
  }
}
