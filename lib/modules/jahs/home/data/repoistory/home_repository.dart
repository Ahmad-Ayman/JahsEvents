import 'package:dartz/dartz.dart';
import 'package:jahsevents/core/error/exceptions.dart';
import 'package:jahsevents/core/error/failure.dart';
import 'package:jahsevents/modules/jahs/home/domain/entities/categories/categories.dart';

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

  @override
  Future<Either<Failure, Categories>> getCategories() async {
    final res = await baseHomeRemoteDataSource.getCategories();
    try {
      return Right(res);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
