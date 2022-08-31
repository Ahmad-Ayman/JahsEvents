import 'package:jahsevents/modules/jahs/auth/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required String userID,
    required String fName,
    required String lName,
    required String email,
    required String phone,
    required String? nationalID,
    required String? profilePicture,
    required DateTime registerDate,
    required String typeID,
    required String typeName,
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
        );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userID: json['userID'],
        fName: json['fname'],
        lName: json['lname'],
        email: json['email'],
        phone: json['phone'],
        nationalID: json['nationalID'],
        profilePicture: json['profilePicture'],
        registerDate: json['registerDate'],
        typeID: json['typeID'],
        typeName: json['typeName'],
      );
}
