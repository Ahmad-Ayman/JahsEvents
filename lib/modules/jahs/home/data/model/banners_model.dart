import '../../domain/entities/banners.dart';

class HomeBannersModel extends HomeBanners {
  const HomeBannersModel({
    required String homeBannerImage,
  }) : super(homeBannerImage: homeBannerImage);

  factory HomeBannersModel.fromJson(Map<String, dynamic> json) => HomeBannersModel(
        homeBannerImage: json['imageLink'],
      );
}
