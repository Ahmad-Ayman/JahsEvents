import 'package:dio/dio.dart';
import 'package:jahsevents/modules/jahs/auth/data/models/user_model.dart';

import '../../../../../../core/error/exceptions.dart';
import '../../../../../../core/network/api_constant.dart';
import '../../../../../../core/network/error_msg_model.dart';

abstract class BaseUserAuthRemoteDataSource {
  Future<UserModel> userLogin();
  Future<UserModel> userRegister(
    fname,
    lname,
    email,
    pass,
    phone,
    nationalID,
  );
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
  Future<UserModel> userRegister(
    fname,
    lname,
    email,
    pass,
    phone,
    nationalID,
  ) async {
    final response =
        await Dio().get(ApiConstants.userRegisterPath, queryParameters: {
      'First_Name': fname,
      'Last_Name': lname,
      'Email': email,
      'Password': pass,
      'User_Phone': phone,
      'nationalID': nationalID,
      'typeID': 1,
    });
    if (response.statusCode == 200) {
      return UserModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
