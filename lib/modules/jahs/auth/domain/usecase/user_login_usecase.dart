import 'package:dartz/dartz.dart';
import 'package:jahsevents/modules/jahs/auth/domain/entities/user.dart';
import 'package:jahsevents/modules/jahs/auth/domain/repository/base_user_auth_repository.dart';

import '../../../../../core/error/failure.dart';

class UserLoginUseCase {
  final BaseUserAuthRepository baseUserAuthRepository;

  UserLoginUseCase(this.baseUserAuthRepository);

  Future<Either<Failure, User>> execute() async {
    return await baseUserAuthRepository.authUserLogin();
  }
}
