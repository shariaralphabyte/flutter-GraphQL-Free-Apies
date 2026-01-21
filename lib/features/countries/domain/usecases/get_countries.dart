
import '../entities/country_entity.dart';
import '../repositories/country_repository.dart';

class GetCountries {
  final CountryRepository repository;

  GetCountries(this.repository);

  Future<List<Country>> call({
    Map<String, dynamic>? filter,
    int? limit,
    int? offset,
  }) async {
    return await repository.getCountries(
      filter: filter,
      limit: limit,
      offset: offset,
    );
  }
}