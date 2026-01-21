
import 'dart:developer';


import '../../domain/entities/country_entity.dart';
import '../../domain/repositories/country_repository.dart';
import '../datasources/country_remote_data_source.dart';
import '../models/country_model.dart';

class CountryRepositoryImpl implements CountryRepository {
  final CountryRemoteDataSource _remoteDataSource;

  CountryRepositoryImpl(this._remoteDataSource);

  @override
  Future<Country> getCountry({
    required String code,
    bool withLanguages = true,
  }) async {
    try {
      final data = await _remoteDataSource.getCountry(
        code: code,
      );
      final model = CountryModel.fromJson(data);
      return model.toEntity();
    } catch (e) {
      log('Error getting country: $e');
      rethrow;
    }
  }

  @override
  Future<List<Country>> getCountries({
    Map<String, dynamic>? filter,
    int? limit,
    int? offset,
  }) async {
    try {
      final data = await _remoteDataSource.getCountries();
      
      // Apply client-side pagination if needed
      var countries = data
          .map((json) => CountryModel.fromJson(json).toEntity())
          .toList();
      
      if (offset != null) {
        countries = countries.skip(offset).toList();
      }
      
      if (limit != null) {
        countries = countries.take(limit).toList();
      }
      
      return countries;
    } catch (e) {
      log('Error getting countries: $e');
      rethrow;
    }
  }

  @override
  Future<List<Country>> searchCountries({
    required String query,
    int? limit,
  }) async {
    try {
      final data = await _remoteDataSource.searchCountries(
        query: query,
      );
      
      var countries = data
          .map((json) => CountryModel.fromJson(json).toEntity())
          .toList();
      
      if (limit != null) {
        countries = countries.take(limit).toList();
      }
      
      return countries;
    } catch (e) {
      log('Error searching countries: $e');
      rethrow;
    }
  }

  @override
  Future<List<Country>> getCountriesByContinent({
    required String continentCode,
    int? limit,
    int? offset,
  }) async {
    try {
      final data = await _remoteDataSource.getCountriesByContinent(
        continentCode: continentCode,
      );
      
      var countries = data
          .map((json) => CountryModel.fromJson(json).toEntity())
          .toList();
      
      if (offset != null) {
        countries = countries.skip(offset).toList();
      }
      
      if (limit != null) {
        countries = countries.take(limit).toList();
      }
      
      return countries;
    } catch (e) {
      log('Error getting countries by continent: $e');
      rethrow;
    }
  }

  @override
  Future<List<Country>> getCountriesByLanguage({
    required String languageCode,
    int? limit,
    int? offset,
  }) async {
    try {
      final data = await _remoteDataSource.getCountriesByLanguage(
        languageCode: languageCode,
      );
      
      var countries = data
          .map((json) => CountryModel.fromJson(json).toEntity())
          .toList();
      
      if (offset != null) {
        countries = countries.skip(offset).toList();
      }
      
      if (limit != null) {
        countries = countries.take(limit).toList();
      }
      
      return countries;
    } catch (e) {
      log('Error getting countries by language: $e');
      rethrow;
    }
  }
}