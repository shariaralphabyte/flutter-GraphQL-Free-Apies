
import '../entities/country_entity.dart';

abstract class CountryRepository {
  /// Get a single country by its code
  /// [code] - The country code (e.g., "US")
  /// [withLanguages] - Whether to include languages in the response
  Future<Country> getCountry({
    required String code,
    bool withLanguages = true,
  });

  /// Get multiple countries with optional filtering and pagination
  /// [filter] - Optional filter parameters
  /// [limit] - Maximum number of results to return
  /// [offset] - Number of results to skip (for pagination)
  Future<List<Country>> getCountries({
    Map<String, dynamic>? filter,
    int? limit,
    int? offset,
  });

  /// Search countries by query string
  /// [query] - Search query
  /// [limit] - Maximum number of results to return
  Future<List<Country>> searchCountries({
    required String query,
    int? limit,
  });

  /// Get countries by continent
  Future<List<Country>> getCountriesByContinent({
    required String continentCode,
    int? limit,
    int? offset,
  });

  /// Get countries by language
  Future<List<Country>> getCountriesByLanguage({
    required String languageCode,
    int? limit,
    int? offset,
  });
}