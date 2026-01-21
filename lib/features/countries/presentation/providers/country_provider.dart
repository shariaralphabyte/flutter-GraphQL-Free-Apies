import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/graphql_client.dart';
import '../../data/datasources/country_remote_data_source.dart';
import '../../data/repositories/country_repository_impl.dart';
import '../../domain/entities/country_entity.dart';
import '../../domain/repositories/country_repository.dart';
import '../../domain/usecases/get_countries.dart';
import '../../domain/usecases/get_countries_by_continent.dart';
import '../../domain/usecases/get_countries_by_language.dart';
import '../../domain/usecases/get_country.dart';
import '../../domain/usecases/search_countries.dart';


part 'country_provider.g.dart';

// Providers
@riverpod
GraphQLClient graphQLClient(GraphQLClientRef ref) {
  return GraphQLConfig.getClient();
}

@riverpod
CountryRemoteDataSource countryRemoteDataSource(
    CountryRemoteDataSourceRef ref) {
  return CountryRemoteDataSource(ref.watch(graphQLClientProvider));
}

@riverpod
CountryRepository countryRepository(CountryRepositoryRef ref) {
  return CountryRepositoryImpl(ref.watch(countryRemoteDataSourceProvider));
}

@riverpod
GetCountry getCountry(GetCountryRef ref) {
  return GetCountry(ref.watch(countryRepositoryProvider));
}

@riverpod
GetCountries getCountries(GetCountriesRef ref) {
  return GetCountries(ref.watch(countryRepositoryProvider));
}

@riverpod
SearchCountries searchCountries(SearchCountriesRef ref) {
  return SearchCountries(ref.watch(countryRepositoryProvider));
}

@riverpod
GetCountriesByContinent getCountriesByContinent(GetCountriesByContinentRef ref) {
  return GetCountriesByContinent(ref.watch(countryRepositoryProvider));
}

@riverpod
GetCountriesByLanguage getCountriesByLanguage(GetCountriesByLanguageRef ref) {
  return GetCountriesByLanguage(ref.watch(countryRepositoryProvider));
}

// State Providers
@riverpod
class CountryListNotifier extends _$CountryListNotifier {
  @override
  FutureOr<List<Country>> build({
    int limit = 20,
    int offset = 0,
  }) async {
    return ref.watch(getCountriesProvider).call(
      limit: limit,
      offset: offset,
    );
  }

  Future<void> refresh() async {
    state = await AsyncValue.guard(() async {
      return ref.watch(getCountriesProvider).call(
        limit: limit,
        offset: offset,
      );
    });
  }

  Future<void> loadMore() async {
    final currentState = state.valueOrNull;
    if (currentState == null) return;

    final newCountries = await ref.watch(getCountriesProvider).call(
      limit: limit,
      offset: currentState.length,
    );

    state = AsyncData([...currentState, ...newCountries]);
  }
}

@riverpod
class CountryDetailNotifier extends _$CountryDetailNotifier {
  @override
  FutureOr<Country> build(String code) async {
    return ref.watch(getCountryProvider).call(code: code);
  }

  Future<void> refresh() async {
    state = await AsyncValue.guard(() async {
      return ref.watch(getCountryProvider).call(code: code);
    });
  }
}

@riverpod
class CountrySearchNotifier extends _$CountrySearchNotifier {
  @override
  FutureOr<List<Country>> build() {
    // Initial empty state
    return [];
  }

  Future<void> search(String query) async {
    if (query.isEmpty) {
      state = const AsyncData([]);
      return;
    }

    state = await AsyncValue.guard(() async {
      return ref.watch(searchCountriesProvider).call(query: query);
    });
  }

  void clear() {
    state = const AsyncData([]);
  }
}

// UseCase Providers
@riverpod
Future<Country> countryDetail(CountryDetailRef ref,
    {required String code}) async {
  return ref.watch(getCountryProvider).call(code: code);
}

@riverpod
Future<List<Country>> paginatedCountries(PaginatedCountriesRef ref,
    {int limit = 20, int offset = 0}) async {
  return ref.watch(getCountriesProvider).call(limit: limit, offset: offset);
}