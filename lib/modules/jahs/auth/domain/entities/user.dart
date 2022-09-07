import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int userID;
  final String fName;
  final String lName;
  final String email;
  final String phone;
  final String? nationalID;
  final String? profilePicture;
  final String registerDate;
  final int typeID;
  final String typeName;
  final String status;
  final String message;

  const User({
    required this.userID,
    required this.fName,
    required this.lName,
    required this.email,
    required this.phone,
    this.nationalID,
    this.profilePicture,
    required this.registerDate,
    required this.typeID,
    required this.typeName,
    required this.message,
    required this.status,
  });

  @override
  List<Object> get props => [
        userID,
        fName,
        lName,
        email,
        phone,
        nationalID!,
        profilePicture!,
        registerDate,
        typeID,
        typeName,
        status,
        message,
      ];
}
