import 'package:equatable/equatable.dart';

class ServicesOffered extends Equatable {
  final int serviceId;
  final String serviceName;
  final String serviceDesc;
  final String serviceImage;
  final int serviceCategoryId;

  const ServicesOffered({
    required this.serviceId,
    required this.serviceName,
    required this.serviceDesc,
    required this.serviceImage,
    required this.serviceCategoryId,
  });

  @override
  List<Object> get props => [
        serviceId,
        serviceName,
        serviceDesc,
        serviceImage,
        serviceCategoryId,
      ];
}
