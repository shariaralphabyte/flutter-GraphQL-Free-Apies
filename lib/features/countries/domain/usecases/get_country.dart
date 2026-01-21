import '../entities/country_entity.dart';
import '../repositories/country_repository.dart';

class GetCountry {
  final CountryRepository repository;

  GetCountry(this.repository);

  Future<Country> call({
    required String code,
    bool withLanguages = true,
  }) async {
    return await repository.getCountry(
      code: code,
      withLanguages: withLanguages,
    );
  }
}