import 'package:dio/dio.dart';
import 'package:jahsevents/modules/jahs/auth/data/models/user_model.dart';

import '../../../../../../core/error/exceptions.dart';
import '../../../../../../core/network/api_constant.dart';
import '../../../../../../core/network/error_msg_model.dart';

abstract class BaseUserAuthRemoteDataSource {
  Future<UserModel> userLogin();
  Future<UserModel> userRegister();
}

class UserAuthRemoteDataSource extends BaseUserAuthRemoteDataSource {
  @override
  Future<UserModel> userLogin() async {
    final response = await Dio().get(ApiConstants.userLoginPath);
    if (response.statusCode == 200) {
      return UserModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<UserModel> userRegister() async {
    final response = await Dio().get(ApiConstants.userRegisterPath);
    if (response.statusCode == 200) {
      return UserModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
