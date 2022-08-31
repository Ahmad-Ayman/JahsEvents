import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../entities/user.dart';
import '../repository/base_user_auth_repository.dart';

class UserLoginUseCase {
  final BaseUserAuthRepository baseUserAuthRepository;

  UserLoginUseCase(this.baseUserAuthRepository);

  Future<Either<Failure, User>> execute() async {
    return await baseUserAuthRepository.authUserRegister();
  }
}
