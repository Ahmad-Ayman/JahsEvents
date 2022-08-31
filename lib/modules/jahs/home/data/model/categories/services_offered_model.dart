import 'package:jahsevents/modules/jahs/home/domain/entities/categories/services_offered.dart';

class ServicesOfferedModel extends ServicesOffered {
  const ServicesOfferedModel(
      {required String serviceId,
      required String serviceName,
      required String serviceDesc,
      required String serviceImage,
      required String serviceCategoryId})
      : super(
          serviceId: serviceId,
          serviceName: serviceName,
          serviceDesc: serviceDesc,
          serviceImage: serviceImage,
          serviceCategoryId: serviceCategoryId,
        );

  factory ServicesOfferedModel.fromJson(Map<String, dynamic> json) =>
      ServicesOfferedModel(
        serviceId: json['serviceID'],
        serviceName: json['serviceName'],
        serviceDesc: json['serviceDesc'],
        serviceImage: json['serviceImage'],
        serviceCategoryId: json['serviceCategoryID'],
      );
}
