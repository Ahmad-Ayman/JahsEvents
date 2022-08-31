import 'package:dartz/dartz.dart';
import 'package:jahsevents/core/error/failure.dart';
import 'package:jahsevents/modules/jahs/auth/data/datasource/remote_data_source/user_auth_remote_data_source.dart';
import 'package:jahsevents/modules/jahs/auth/domain/entities/user.dart';
import 'package:jahsevents/modules/jahs/auth/domain/repository/base_user_auth_repository.dart';

import '../../../../../core/error/exceptions.dart';

class UserAuthRepository extends BaseUserAuthRepository {
  final BaseUserAuthRemoteDataSource baseUserAuthRemoteDataSource;
  UserAuthRepository(this.baseUserAuthRemoteDataSource);

  @override
  Future<Either<Failure, User>> authUserLogin() async {
    final res = await baseUserAuthRemoteDataSource.userLogin();
    try {
      return Right(res);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, User>> authUserRegister() async {
    final res = await baseUserAuthRemoteDataSource.userRegister();
    try {
      return Right(res);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
