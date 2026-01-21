
import '../entities/country_entity.dart';
import '../repositories/country_repository.dart';

class SearchCountries {
  final CountryRepository repository;

  SearchCountries(this.repository);

  Future<List<Country>> call({
    required String query,
    int? limit,
  }) async {
    return await repository.searchCountries(
      query: query,
      limit: limit,
    );
  }
}
