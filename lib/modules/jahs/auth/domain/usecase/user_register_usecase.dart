import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../entities/user.dart';
import '../repository/base_user_auth_repository.dart';

class UserRegisterUseCase {
  final BaseUserAuthRepository baseUserAuthRepository;

  UserRegisterUseCase(this.baseUserAuthRepository);

  Future<Either<Failure, User>> execute(
    fname,
    lname,
    email,
    pass,
    phone,
    nationalID,
  ) async {
    return await baseUserAuthRepository.authUserRegister(
      fname,
      lname,
      email,
      pass,
      phone,
      nationalID,
    );
  }
}
