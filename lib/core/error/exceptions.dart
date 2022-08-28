import 'package:jahsevents/core/network/error_msg_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  const ServerException({required this.errorMessageModel});
}

class LocalException implements Exception {
  final String errorMessage;

  const LocalException({required this.errorMessage});
}
