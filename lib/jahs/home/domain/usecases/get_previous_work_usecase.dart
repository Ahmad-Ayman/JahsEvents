import '../repositories/base_home_repository.dart';

class GetPreviousWorkUseCase {
  final BaseHomePageRepository baseHomePageRepository;

  GetPreviousWorkUseCase(this.baseHomePageRepository);

  // Future<List<PreviousWork>> execute() async {
  //   return await baseHomePageRepository.getPreviousWork();
  // }
}
