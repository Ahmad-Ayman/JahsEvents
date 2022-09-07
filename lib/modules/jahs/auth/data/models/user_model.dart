import 'package:jahsevents/modules/jahs/auth/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required int userID,
    required String fName,
    required String lName,
    required String email,
    required String phone,
    required String? nationalID,
    required String? profilePicture,
    required String registerDate,
    required int typeID,
    required String typeName,
    required String status,
    required String message,
  }) : super(
          userID: userID,
          fName: fName,
          lName: lName,
          email: email,
          phone: phone,
          nationalID: nationalID,
          profilePicture: profilePicture,
          registerDate: registerDate,
          typeID: typeID,
          typeName: typeName,
          status: status,
          message: message,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userID: json['userID'],
        fName: json['fName'],
        lName: json['lName'],
        email: json['email'],
        phone: json['phone'],
        nationalID: json['nationalID'],
        profilePicture: json['profilePicture'],
        registerDate: json['registerDate'],
        typeID: json['typeID'],
        typeName: json['typeName'],
        status: json['status'],
        message: json['message'],
      );
}
