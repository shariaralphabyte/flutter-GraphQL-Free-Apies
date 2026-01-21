
import '../entities/country_entity.dart';
import '../repositories/country_repository.dart';

class GetCountriesByContinent {
  final CountryRepository repository;

  GetCountriesByContinent(this.repository);

  Future<List<Country>> call({
    required String continentCode,
    int? limit,
    int? offset,
  }) async {
    return await repository.getCountriesByContinent(
      continentCode: continentCode,
      limit: limit,
      offset: offset,
    );
  }
}
