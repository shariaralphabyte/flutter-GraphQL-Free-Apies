
import '../entities/country_entity.dart';
import '../repositories/country_repository.dart';

class GetCountriesByLanguage {
  final CountryRepository repository;

  GetCountriesByLanguage(this.repository);

  Future<List<Country>> call({
    required String languageCode,
    int? limit,
    int? offset,
  }) async {
    return await repository.getCountriesByLanguage(
      languageCode: languageCode,
      limit: limit,
      offset: offset,
    );
  }
}
