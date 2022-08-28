import 'package:dartz/dartz.dart';
import 'package:jahsevents/modules/jahs/home/domain/repositories/base_home_repository.dart';

import '../../../../../core/error/failure.dart';
import '../entities/banners.dart';




class GetHomeBannersUseCase {
  final BaseHomePageRepository baseHomePageRepository;

  GetHomeBannersUseCase(this.baseHomePageRepository);

  Future<Either<Failure, List<HomeBanners>>> execute() async {
    return await baseHomePageRepository.getBanners();
  }
}
