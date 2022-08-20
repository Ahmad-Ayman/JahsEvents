import '../repositories/base_home_repository.dart';

class GetServicesCategoriesUseCase {
  final BaseHomePageRepository baseHomePageRepository;

  GetServicesCategoriesUseCase(this.baseHomePageRepository);

  // Future<List<ServicesCategories>> execute() async {
  //   return await baseHomePageRepository.getServicesCategories();
  // }
}
