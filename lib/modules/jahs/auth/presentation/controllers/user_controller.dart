import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:jahsevents/modules/jahs/auth/data/datasource/remote_data_source/user_auth_remote_data_source.dart';
import 'package:jahsevents/modules/jahs/auth/data/repository/user_auth_repository.dart';
import 'package:jahsevents/modules/jahs/auth/domain/entities/user.dart';
import 'package:jahsevents/modules/jahs/auth/domain/repository/base_user_auth_repository.dart';
import 'package:jahsevents/modules/jahs/auth/domain/usecase/user_register_usecase.dart';

class UserController extends GetxController {
  var userData = Rx<User?>(null);
  var fname = TextEditingController().obs;
  var lname = TextEditingController().obs;
  var email = TextEditingController().obs;
  var phone = TextEditingController().obs;
  var nationalID = TextEditingController().obs;

  void userRegister(
    fname,
    lname,
    email,
    pass,
    phone,
    nationalID,
  ) async {
    EasyLoading.show(
      status: 'loading...',
      indicator: SpinKitPouringHourGlass(color: Colors.redAccent),
    );
    BaseUserAuthRemoteDataSource baseUserAuthRemoteDataSource =
        UserAuthRemoteDataSource();
    BaseUserAuthRepository baseUserAuthRepository =
        UserAuthRepository(baseUserAuthRemoteDataSource);
    await UserRegisterUseCase(baseUserAuthRepository)
        .execute(
      fname,
      lname,
      email,
      pass,
      phone,
      nationalID,
    )
        .then((value) {
      value.fold((l) {
        debugPrint('error here : ${l.errorMessage}');
      }, (user) {
        userData.value = user;
      });
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    userRegister('Mohamed', 'Mahmoud', 'mohamed@gmail.org', '123456',
        '01010114230', '29602022222');
  }
}
