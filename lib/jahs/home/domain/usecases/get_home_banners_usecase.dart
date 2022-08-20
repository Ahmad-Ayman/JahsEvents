import 'package:jahsevents/jahs/home/domain/entities/banners.dart';
import 'package:jahsevents/jahs/home/domain/repositories/base_home_repository.dart';

class GetHomeBannersUseCase {
  final BaseHomePageRepository baseHomePageRepository;

  GetHomeBannersUseCase(this.baseHomePageRepository);

  Future<List<HomeBanners>> execute() async {
    return await baseHomePageRepository.getBanners();
  }
}
