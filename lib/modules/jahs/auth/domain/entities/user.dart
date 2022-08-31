import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String userID;
  final String fName;
  final String lName;
  final String email;
  final String phone;
  final String? nationalID;
  final String? profilePicture;
  final DateTime registerDate;
  final String typeID;
  final String typeName;

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
      ];
}
