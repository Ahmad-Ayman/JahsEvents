import 'package:dartz/dartz.dart';
import 'package:jahsevents/modules/jahs/auth/domain/entities/user.dart';

import '../../../../../core/error/failure.dart';
import '../../../home/domain/entities/banners.dart';

abstract class BaseUserAuthRepository {
  // Future<List<PreviousWork>> getPreviousWork();

  Future<Either<Failure, User>> authUserLogin();

  Future<Either<Failure, User>> authUserRegister();
}
