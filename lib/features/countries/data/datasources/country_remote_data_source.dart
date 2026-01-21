
import 'package:graphql_flutter/graphql_flutter.dart';

class CountryRemoteDataSource {
  final GraphQLClient _client;

  CountryRemoteDataSource(this._client);

  static const String getCountryQuery = r'''
    query GetCountry($code: ID!) {
      country(code: $code) {
        code
        name
        native
        capital
        emoji
        currency
        languages {
          code
          name
        }
      }
    }
  ''';

  static const String getCountriesQuery = r'''
    query GetCountries {
      countries {
        code
        name
        native
        capital
        emoji
        currency
        languages {
          code
          name
        }
      }
    }
  ''';

  static const String getCountriesByContinentQuery = r'''
    query GetCountriesByContinent($continentCode: ID!) {
      continent(code: $continentCode) {
        countries {
          code
          name
          native
          capital
          emoji
          currency
          languages {
            code
            name
          }
        }
      }
    }
  ''';

  Future<Map<String, dynamic>> getCountry({
    required String code,
  }) async {
    try {
      final result = await _client.query(
        QueryOptions(
          document: gql(getCountryQuery),
          variables: {
            'code': code,
          },
          fetchPolicy: FetchPolicy.cacheAndNetwork,
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception.toString());
      }

      return result.data?['country'] ?? {};
    } catch (e) {
      rethrow;
    }
  }

  Future<List<dynamic>> getCountries() async {
    try {
      final result = await _client.query(
        QueryOptions(
          document: gql(getCountriesQuery),
          fetchPolicy: FetchPolicy.cacheAndNetwork,
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception.toString());
      }

      return result.data?['countries'] ?? [];
    } catch (e) {
      rethrow;
    }
  }

  Future<List<dynamic>> searchCountries({
    required String query,
  }) async {
    try {
      // The API doesn't support search, so we fetch all and filter client-side
      final allCountries = await getCountries();
      final queryLower = query.toLowerCase();
      
      return allCountries.where((country) {
        final name = (country['name'] ?? '').toString().toLowerCase();
        final native = (country['native'] ?? '').toString().toLowerCase();
        final code = (country['code'] ?? '').toString().toLowerCase();
        final capital = (country['capital'] ?? '').toString().toLowerCase();
        
        return name.contains(queryLower) ||
            native.contains(queryLower) ||
            code.contains(queryLower) ||
            capital.contains(queryLower);
      }).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<dynamic>> getCountriesByContinent({
    required String continentCode,
  }) async {
    try {
      final result = await _client.query(
        QueryOptions(
          document: gql(getCountriesByContinentQuery),
          variables: {
            'continentCode': continentCode,
          },
          fetchPolicy: FetchPolicy.cacheAndNetwork,
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception.toString());
      }

      return result.data?['continent']?['countries'] ?? [];
    } catch (e) {
      rethrow;
    }
  }

  Future<List<dynamic>> getCountriesByLanguage({
    required String languageCode,
  }) async {
    try {
      // The API doesn't have a direct language filter, so we fetch all and filter
      final allCountries = await getCountries();
      
      return allCountries.where((country) {
        final languages = country['languages'] as List<dynamic>? ?? [];
        return languages.any((lang) => 
          lang['code']?.toString().toLowerCase() == languageCode.toLowerCase()
        );
      }).toList();
    } catch (e) {
      rethrow;
    }
  }
}