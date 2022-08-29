import 'package:dartz/dartz.dart';
import 'package:jahsevents/core/error/exceptions.dart';
import 'package:jahsevents/core/error/failure.dart';

import '../../domain/entities/banners.dart';
import '../../domain/repositories/base_home_repository.dart';
import '../datasource/remote_data_source/home_remote_data_source.dart';

class HomeRepository extends BaseHomePageRepository {
  final BaseHomeRemoteDataSource baseHomeRemoteDataSource;
  HomeRepository(this.baseHomeRemoteDataSource);

  @override
  Future<Either<Failure, List<HomeBanners>>> getBanners() async {
    final res = await baseHomeRemoteDataSource.getBanners();
    try {
      return Right(res);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
