import 'package:equatable/equatable.dart';

class HomeBanners extends Equatable {
  final String homeBannerImage;

  const HomeBanners({
    required this.homeBannerImage,
  });

  @override
  List<Object> get props => [homeBannerImage];
}
