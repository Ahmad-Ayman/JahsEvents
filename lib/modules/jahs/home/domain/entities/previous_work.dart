import 'package:equatable/equatable.dart';

class PreviousWork extends Equatable {
  final int historyID;
  final int? reservationID;
  final int? numberOfAttendees;
  final int? userID;
  final String? userName;
  final double? rate;
  final String? serviceName;
  final int? eventID;
  final String? eventName;
  final String? eventAddress;
  final int? isOnline;
  final double? finalPrice;
  final String eventDate;

  const PreviousWork({
    required this.historyID,
    this.reservationID,
    this.numberOfAttendees,
    this.userID,
    this.userName,
    this.rate,
    this.serviceName,
    this.eventID,
    this.eventName,
    this.eventAddress,
    this.isOnline,
    this.finalPrice,
    required this.eventDate,
  });

  @override
  List<Object> get props => [
        historyID,
        reservationID!,
        numberOfAttendees!,
        userID!,
        userName!,
        rate!,
        serviceName!,
        eventID!,
        eventName!,
        eventAddress!,
        isOnline!,
        finalPrice!,
        eventDate,
      ];
}
